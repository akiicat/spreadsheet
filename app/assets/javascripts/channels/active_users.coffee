App.active_users = App.cable.subscriptions.create "ActiveUsersChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    console.log data
    if data.old_val && !data.new_val
      App.spreadsheet.remove_user(data.old_val)
    else if data.new_val
      App.spreadsheet.new_user(data.new_val)
    else if data.current_user
      App.spreadsheet.set_current_user(data.current_user)

  select_cells: (cells) ->
    @perform('select_cells', selected_cells: cells)
