// gulpfile.js

// --- INIT
var gulp    = require('gulp');
var less    = require('gulp-less');
var path    = require('path');
var csslint = require('gulp-csslint');
var csscomb = require('gulp-csscomb');
var minify  = require('gulp-minify-css');
var rename  = require('gulp-rename');
var autoprefixer = require('gulp-autoprefixer');

// --- TASK
gulp.task('build-less', function () {

  return gulp.src('./less/*.less')
    // Compile LESS files
    .pipe(less().on('error', console.log))

    // Prefix CSS
    .pipe(autoprefixer(
      'Android 2.3',
      'Android >= 4',
      'Chrome >= 20',
      'Firefox >= 24',
      'Explorer >= 8',
      'iOS >= 6',
      'Opera >= 12',
      'Safari >= 6'
    ).on('error', console.log))

    // CSS Linter
    .pipe(csslint('./less/.csslintrc.json'))
    //.pipe(csslint.reporter())

    // Format style for CSS less/.csscomb.json
    .pipe(csscomb())

    // Create CSS file
    .pipe(gulp.dest('./dist/css'))

    // Minify CSS file
    .pipe(minify({
      compatibility: 'ie8',
      noAdvanced: true
    }))

    // Add min to name file
    .pipe(rename({suffix: '.min'}))

    // Create minified file
    .pipe(gulp.dest('./dist/css'));

});

// --- WATCH


// --- DEFAULT
gulp.task('default', ['build-less'], function() {
  console.log('Tareas finalizadas ...');
});
