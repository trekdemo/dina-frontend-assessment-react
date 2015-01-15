React = require('react')
window.React = React # export for http://fb.me/react-devtools

App = require('./components/App.coffee')

React.render(
  React.createElement(App),
  document.getElementById('main')
)
