class <%= moduleName %>Storage
    constructor: ->
        @clicksCount = 0

    getClicksCount: -> @clicksCount

    incrementClicksCount: ->
        @clicksCount += 1

module.exports = <%= moduleName %>Storage