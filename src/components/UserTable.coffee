React = require('react')
UserRow = React.createFactory(require('./UserRow.coffee'))

UserTable = React.createClass(
  render: ->
    {table, tbody, tr, th, td} = React.DOM

    (table {className: 'table table-hover'}, [
      (tr {}, [
        (th {}, '')
        (th {}, 'First name')
        (th {}, 'Last name')
        (th {}, 'Status')
        (th {}, 'Created at')
        (th {}, 'Updated at')
      ])
      (@props.users.map (user, i)->
        (UserRow {user: user, index: i}))
    ])
)

module.exports = UserTable
