module.exports = function(config) {
  config.set({

    preprocessors: {
      'Scripts/app.js': ['coverage'],
      'Tests/**/*.coffee': ['coffee']
    },

    coffeePreprocessor: {
      options: {
        bare: true,
        sourceMap: false
      },
      transformPath: function(path) {
        return path.replace(/\.coffee$/, '.js');
      }
    },

    basePath: '../',

    frameworks: ['jasmine'],

    files: [
      'Scripts/vendor.js',
      'Scripts/app.js',
      'bower_components/angular-mocks/angular-mocks.js',
      'Tests/**/*.coffee'
    ],

    exclude: [],

    reporters: ['progress', 'junit', 'coverage'],
    
    junitReporter: {
      outputFile: '../build/jasmine/test-results.xml'
    },
    
    coverageReporter: {
      reporters:[
        {type: 'html', dir:'../build/coverage/html', subdir: function(browser) { return browser.toLowerCase().split(/[ /-]/)[0]; }},
        {type: 'cobertura', dir:'../build/coverage/cobertura', subdir: function(browser) { return browser.toLowerCase().split(/[ /-]/)[0]; }}
      ]
    },

    port: 9876,

    runnerPort: 9100,

    colors: true,

    logLevel: config.LOG_INFO,

    autoWatch: true,

    browsers: ['Chrome'],

    captureTimeout: 60000,

    plugins: [
      'karma-jasmine',
      'karma-coffee-preprocessor',
      'karma-coverage',
      'karma-junit-reporter',
      'karma-chrome-launcher'
    ],


    // Continuous Integration mode
    // if true, it capture browsers, run tests and exit
    singleRun: false
  });
};
