'use strict'


taskMasterOptions = 
  dirname: 'src/gulp' 
  pattern: '*.coffee' 
  cwd: process.cwd() 
  watchExt: '.watch'  

gulp = require('gulp-task-master')(taskMasterOptions)


gulp.task "watch",  ['compile-sass.watch', 'compile-jade.watch']
gulp.task "bot", ['compile-sass.watch', 'compile-jade.watch']



gulp.task "default", ['compile-sass', 'compile-jade']
