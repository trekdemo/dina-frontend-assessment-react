React  = require 'react'
_ = require 'lodash'
$ = require('jquery')
UserList = React.createFactory(require('./UserList.coffee'))

App = React.createClass(
  getInitialState: ->
    {users: []}

  componentDidMount: ->
    @loadUsersFromServer()

  render: ->
    {div, h1} = React.DOM
    (div {}, [
      (h1 {}, "Users")
      (UserList {collection: @state.users, perPage: 10})
    ])

  loadUsersFromServer: ->
      .done (data)=> @setState users: data
    $.getJSON('http://js-assessment-backend.herokuapp.com/users.json')
      .fail (error)=> console.log error
)

module.exports = App
