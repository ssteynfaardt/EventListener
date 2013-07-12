class EventListner
  EventListner::on = (type, method, scope, context) ->
    listeners = @listeners = {}  unless listeners = @listeners
    handlers = listeners[type] = []  unless handlers = listeners[type]
    scope = ((if scope then scope else window))
    handlers.push
      method: method
      scope: scope
      context: ((if context then context else scope))


  EventListner::trigger = (type, data, context) ->
    return  unless listeners = @listeners
    return  unless handlers = listeners[type]
    i = 0
    n = handlers.length
    while i < n
      handler = handlers[i]
      continue  if typeof context isnt "undefined" and context isnt handler.context
      return false  if handler.method.call(handler.scope, this, type, data) is false
      i++
    true

  EventListner::off = (type, method) ->
    return  unless listeners = @listeners
    return  unless handlers = listeners[type]
    found = false
    i = 0
    n = handlers.length
    while i < n
      handler = handlers[i]
      continue if typeof context isnt "undefined" and context isnt handler.context
      if handler.method is method
        found = true
        handlers.splice i, 1
        #since we've removed an item from the array decrease the count
        i--
        n--
      i++
    found