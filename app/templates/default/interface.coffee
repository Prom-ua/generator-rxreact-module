initApp = require './app'


Impl = (node) ->
    mountNode = if node.length then node[0] else node
    initApp(mountNode)
    {}


module.exports =
    protocols:
        definitions:
            <%= moduleName %>: []
        implementations:
            <%= moduleName %>: Impl