eyes = require('eyes')

console.log "Loading event"

exports.handler = (event, context) ->
  eyes.inspect event
  console.log "key1 = " + event.key1
  console.log "key2 = " + event.key2
  console.log "key3 = " + event.key3
  context.done null, "SUCCESS"
  return
