React = require('react')

UserRow = React.createClass(
  render: ->
    {tr, td} = React.DOM
    (tr {key: "user_#{@props.user.id}"}, [
      (td {}, @props.user.id),
      (td {}, @props.user.first_name),
      (td {}, @props.user.last_name),
      (td {}, @props.user.status),
      (td {}, @props.user.created_at),
      (td {}, @props.user.updated_at)
    ])
)

module.exports = UserRow
