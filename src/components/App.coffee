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
      (UserList {collection: @state.users, perPage: 10, onStatusChange: @updateUserStatus})
    ])

  loadUsersFromServer: ->
    $.getJSON('http://js-assessment-backend.herokuapp.com/users.json')
      .done (data)=> @setState users: _.sortBy(data, 'id')
      .fail (error)=> console.log error

  updateUserStatus: (user, new_status)->
)

module.exports = App
