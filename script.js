const apiKey = '430015d32679c5f6bdfb5894f99730cd';
let genreMap = {};

function fetchMovieDetails(movieId) {
  return $.getJSON(`https://api.themoviedb.org/3/movie/${movieId}?api_key=${apiKey}`);
}

function fetchGenres() {
    return $.getJSON(`https://api.themoviedb.org/3/genre/movie/list?api_key=${apiKey}`)
        .then(data => {
            data.genres.forEach(genre => {
                genreMap[genre.id] = genre.name;
            });
        });
}

function fetchAverageRating(movieId) {
    return $.ajax({
        url: 'get_average_rating.php',
        method: 'GET',
        data: { movie_id: movieId },
        dataType: 'json'
    });
}

$(document).on('mouseenter', '.star', function () {
    const value = $(this).data('value');
    $(this).parent().children().each(function () {
        $(this).toggleClass('hover', $(this).data('value') <= value);
    });
});

$(document).on('mouseleave', '.stars', function () {
    $(this).children().removeClass('hover');
});

$(document).on('click', '.star', function () {
    const value = $(this).data('value');
    const stars = $(this).parent().children();
    const movieId = $(this).closest('.movie').data('movie-id');

    stars.each(function () {
        $(this).toggleClass('selected', $(this).data('value') <= value);
    });

    $.ajax({
        url: 'rate_movie.php',
        method: 'POST',
        contentType: 'application/json',
        data: JSON.stringify({ movie_id: movieId, rating: value }),
        success: function (response) {
            if (response.success) {
                alert('Thanks for rating!');
                loadTopSearches();
            } else {
                alert('Error saving rating.');
            }
        },
        error: function () {
            alert('Failed to send rating.');
        }
    });
});

$('#searchBtn').click(async function () {
    const query = $('#searchQuery').val().trim();
    if (!query) return alert('Please enter a movie title.');

    $('#searchSection').show();
    $('#results').html('<p>Loading...</p>');

    await fetchGenres();

    $.getJSON('fetch_movies.php', { query: query }, async function (data) {
        if (data.error) {
            $('#results').html('<p>Error: ' + data.error + '</p>');
            return;
        }

        if (data.results.length === 0) {
            $('#results').html('<p>No movies found.</p>');
            return;
        }

        let html = '';
        for (const movie of data.results) {
            let avgRating = 0;
            try {
                const ratingResp = await fetchAverageRating(movie.id);
                avgRating = ratingResp.avg_rating || 0;
            } catch (e) {
                avgRating = 0;
            }

            const posterUrl = movie.poster_path ? `https://image.tmdb.org/t/p/w500${movie.poster_path}` : '';
            const genreNames = movie.genre_ids.map(id => genreMap[id]).filter(Boolean).join(', ');

            html += `
                <div class="movie" data-movie-id="${movie.id}" style="cursor: pointer;">
                    <h2>${movie.title} (${movie.release_date ? movie.release_date.slice(0, 4) : 'N/A'})</h2>
                    ${posterUrl ? `<img src="${posterUrl}" alt="${movie.title} poster" />` : ''}
                    <p>${movie.overview || 'No description available.'}</p>
                    <p><strong>Genres:</strong> ${genreNames || 'Unknown'}</p>
                    <div class="avg-rating">Average Rating: ${avgRating.toFixed(1)} ⭐</div>
                    <div class="stars" data-movie-id="${movie.id}">
                    <span class="star" data-value="1">&#9733;</span>
                    <span class="star" data-value="2">&#9733;</span>
                    <span class="star" data-value="3">&#9733;</span>
                    <span class="star" data-value="4">&#9733;</span>
                    <span class="star" data-value="5">&#9733;</span>
                    </div>
                </div>
            `;
        }

        $('#results').html(html);
        loadTopSearches();
    });
});

$(document).on('click', '.movie', async function (e) {
  if ($(e.target).hasClass('star')) return;

    const movieId = $(this).data('movie-id');
    const details = await fetchMovieDetails(movieId);
    const ratingResp = await fetchAverageRating(movieId);
    const avgRating = ratingResp.avg_rating || 0;

    const genres = details.genres.map(g => g.name).join(', ');
    const poster = details.poster_path ? `https://image.tmdb.org/t/p/w500${details.poster_path}` : '';

    $('#modalBody').html(`
        <h2>${details.title}</h2>
        ${poster ? `<img src="${poster}" style="width:100%; border-radius: 8px;" />` : ''}
        <p><strong>Release Date:</strong> ${details.release_date}</p>
        <p><strong>Genres:</strong> ${genres}</p>
        <p><strong>Overview:</strong> ${details.overview || 'No description available.'}</p>
        <p><strong>Average Rating:</strong> ${avgRating.toFixed(1)} ⭐</p>
    `);

    $('#movieModal').fadeIn();
});

function loadTopSearches() {
    $.getJSON('top_movies.php', function (movies) {
        let html = '';
        movies.forEach(movie => {
            html += `
                <div class="movie">
                    <h3>${movie.title} - ${movie.search_count} searches</h3>
                    ${movie.poster_url ? `<img src="${movie.poster_url}" alt="${movie.title} poster" />` : ''}
                </div>
            `;
        });
        $('#topSearches').html(html);
    });
}


$(document).on('click', '.close', function () {
  $('#movieModal').fadeOut();
});

$(document).on('click', '#movieModal', function (e) {
    if ($(e.target).is('#movieModal')) {
        $('#movieModal').fadeOut();
    }
});

$(document).ready(function () {
    loadTopSearches();
});