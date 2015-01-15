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
    $.ajax(
      user.url,
      method: 'PUT'
      dataType: 'json'
      data: {user: {status: new_status}}
    )
      .done (data)=> @loadUsersFromServer()
      .fail (error)=> console.log error


)

module.exports = App
