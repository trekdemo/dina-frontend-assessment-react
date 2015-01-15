React = require('react')
Button = React.createFactory(require('react-bootstrap/Button'))

UserRow = React.createClass(
  getDefaultProps: ->
    {onStatusChange: (->), user: {}}

  render: ->
    {tr, td} = React.DOM
    (tr {className: "user-status-#{@props.user.status}"}, [
      (td {}, @props.user.id),
      (td {}, @props.user.first_name),
      (td {}, @props.user.last_name),
      (td {}, @_statusLabel()),
      (td {}, @props.user.created_at),
      (td {}, @props.user.updated_at)
      (td {}, @_statusActionLink())

    ])

  _statusLabel: ->
    {span} = React.DOM
    status = @props.user.status
    if status == 'active'
      (span {className: 'label label-success'}, status)
    else
      (span {className: 'label label-danger'}, status)

  _statusActionLink: ->
    if @props.user.status == 'active'
      (Button {bsStyle: 'danger',  onClick: @props.onStatusChange.bind(null, @props.user, 'locked')}, 'Lock')
    else
      (Button {bsStyle: 'success', onClick: @props.onStatusChange.bind(null, @props.user, 'active')}, 'Activate')
)

module.exports = UserRow
