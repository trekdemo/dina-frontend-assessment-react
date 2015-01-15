React = require('react')

App = React.createClass(
  render: ->
    {div, h1} = React.DOM
    (div {className: 'container'},
      (h1 {}, "Hello World!"))
)

module.exports = App
