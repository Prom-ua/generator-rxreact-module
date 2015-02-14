Rx = require 'rx'
React = require 'react'
<%= moduleName %>View = React.createFactory(require '<%= moduleName %>/view/view')
<%= moduleName %>Storage = require '<%= moduleName %>/storage'
dispatchActions = require '<%= moduleName %>/dispatcher'


initApp = (mountNode) ->
    subject = new Rx.Subject()
    store = new <%= moduleName %>Storage()
    view = React.render <%= moduleName %>View({eventStream: subject}), mountNode
    dispatchActions(view, subject, store)


module.exports = initApp