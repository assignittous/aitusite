'use strict'
gulp   = require('gulp')
plumber = require('gulp-plumber')
jade = require('gulp-jade')
aitutils = require('aitutils').aitutils
file = aitutils.file
logger = aitutils.logger

module.exports = ()->
  logger.info 'ASSET', "Compile core jadescripts"

  sourcePaths = ["./src/jade/**/*.jade", "!./src/jade/**/_*.jade"]

  gulp.src(sourcePaths).pipe(plumber()).pipe(jade({ locals: {} })).pipe(gulp.dest("./dist"))
  return


module.exports.taskName = 'compile-jade'
module.exports.watch = ['./src/jade/**/*.jade',"./src/jade/**/_*.jade"]