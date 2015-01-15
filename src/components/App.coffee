React = require('react')
UserList = React.createFactory(require('./UserList.coffee'))

_users = [
  {id: '1',   first_name: 'John'  ,  last_name: 'Doe'    ,  status: 'active' ,  created_at: 'x' ,  updated_at: 'x'},
  {id: '2',   first_name: 'János' ,  last_name: 'Károly' ,  status: 'locked' ,  created_at: 'x' ,  updated_at: 'x'},
  {id: '3',   first_name: 'Juan'  ,  last_name: 'Carlos' ,  status: 'active' ,  created_at: 'x' ,  updated_at: 'x'},
  {id: '4',   first_name: 'John'  ,  last_name: 'Doe'    ,  status: 'active' ,  created_at: 'x' ,  updated_at: 'x'},
  {id: '5',   first_name: 'János' ,  last_name: 'Károly' ,  status: 'locked' ,  created_at: 'x' ,  updated_at: 'x'},
  {id: '6',   first_name: 'Juan'  ,  last_name: 'Carlos' ,  status: 'active' ,  created_at: 'x' ,  updated_at: 'x'},
  {id: '7',   first_name: 'John'  ,  last_name: 'Doe'    ,  status: 'active' ,  created_at: 'x' ,  updated_at: 'x'},
  {id: '8',   first_name: 'János' ,  last_name: 'Károly' ,  status: 'locked' ,  created_at: 'x' ,  updated_at: 'x'},
  {id: '9',   first_name: 'Juan'  ,  last_name: 'Carlos' ,  status: 'active' ,  created_at: 'x' ,  updated_at: 'x'},
  {id: '10',  first_name: 'John'  ,  last_name: 'Doe'    ,  status: 'active' ,  created_at: 'x' ,  updated_at: 'x'},
  {id: '11',  first_name: 'János' ,  last_name: 'Károly' ,  status: 'locked' ,  created_at: 'x' ,  updated_at: 'x'},
  {id: '12',  first_name: 'Juan'  ,  last_name: 'Carlos' ,  status: 'active' ,  created_at: 'x' ,  updated_at: 'x'},
]

App = React.createClass(
  render: ->
    {div, h1} = React.DOM
    (div {}, [
      (h1 {}, "Users")
      (UserList {users: _users})
    ])
)

module.exports = App
