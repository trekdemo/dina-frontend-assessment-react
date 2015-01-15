React = require('react')
UserTable = React.createFactory(require('./UserTable.coffee'))

UserList = React.createClass(
  render: ->
    (UserTable {users: @props.users})
)

module.exports = UserList
