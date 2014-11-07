exports.config =
  conventions:
    assets: /^App\/assets\//
  modules:
    definition: false
    wrapper: false
  paths:
    public: '.'
  files:
    javascripts:
      joinTo:
        'Scripts/app.js': /^app/
        'Scripts/vendor.js': /^(bower_components|vendor)/

    stylesheets:
      joinTo:
        'Content/styles/app.css': /^(App|vendor|bower_components)/
      order:
        after: [
          'App/styles/app.less'
        ]
