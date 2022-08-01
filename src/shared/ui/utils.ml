let isMouseRightClick event =
  (not (React.Event.Mouse.defaultPrevented event))
  && React.Event.Mouse.button event = 0
  && (not (React.Event.Mouse.altKey event))
  && (not (React.Event.Mouse.ctrlKey event))
  && (not (React.Event.Mouse.metaKey event))
  && not (React.Event.Mouse.shiftKey event)
