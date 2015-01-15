React = require('react')

UserRow = React.createClass(
  render: ->
    {tr, td} = React.DOM
    (tr {className: "user-status-#{@props.user.status}"}, [
      (td {}, @props.user.id),
      (td {}, @props.user.first_name),
      (td {}, @props.user.last_name),
      (td {}, @_userLabel(@props.user.status)),
      (td {}, @props.user.created_at),
      (td {}, @props.user.updated_at)
    ])

  _userLabel: (status)->
    {span} = React.DOM
    if status == 'active'
      (span {className: 'label label-success'}, status)
    else
      (span {className: 'label label-danger'}, status)


)

module.exports = UserRow
