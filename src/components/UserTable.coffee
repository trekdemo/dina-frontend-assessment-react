React = require('react')
UserRow = React.createFactory(require('./UserRow.coffee'))

UserTable = React.createClass(
  getDefaultProps: ->
    {users: [], onStatusChange: (->)}

  render: ->
    {table, tbody, tr, th, td} = React.DOM

    (table {className: 'table table-hover'}, [
      (tbody {}, [
        (tr {key: 'theader'}, [
          (th {}, '')
          (th {}, 'First name')
          (th {}, 'Last name')
          (th {}, 'Status')
          (th {}, 'Created at')
          (th {}, 'Updated at')
        ])
        (@props.users.map (user, i)=>
          (UserRow {key: "user_#{user.id}", user: user, index: i, onStatusChange: @props.onStatusChange}))
      ])
    ])
)

module.exports = UserTable
