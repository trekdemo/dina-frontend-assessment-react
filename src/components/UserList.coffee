React  = require 'react/addons'
classSet = React.addons.classSet
UserTable = React.createFactory(require('./UserTable.coffee'))

PaginationLinks = React.createFactory(React.createClass(
  getDefaultProps: ->
    {total: 0, perPage: 10, currentPage: 0, onClick: (->)}

  _pages: ->
    [0...(Math.ceil(@props.total / @props.perPage))]

  render: ->
    {nav, ul, li, a} = React.DOM
    (nav {},
      (ul {className: 'pagination'},
        (@_pages().map (page)=>
          (li {key: page, className: classSet({"active": (@props.currentPage == page)})},
            (a {href: '#', onClick: @props.onClick.bind(null, page)}, page+1)))))
))

UserList = React.createClass(
  getDefaultProps: ->
    {collection: [], perPage: 10}

  getInitialState: ->
    {page: 0}

  render: ->
    {div} = React.DOM
    (div {}, [
      (UserTable {users: @_paginatedCollection()}),
      (PaginationLinks {perPage: @props.perPage, total: @props.collection.length, currentPage: @state.page, onClick: @_handlePageLink})
    ])

  _handlePageLink: (idx)->
    @setState page: idx

  _paginatedCollection: ->
    begining = @state.page * @props.perPage
    end      = begining + @props.perPage
    @props.collection.slice(begining, end)
)

module.exports = UserList
