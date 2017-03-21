class SpreadSheetCellsChannel < ApplicationCable::Channel
  include NoBrainer::Streams

  def subscribed
    stream_from SpreadsheetCell.all, include_initial: true
  end

  def set_cell_value(message)
    location = message['location']
    SpreadsheetCell.upsert! location: location, value: message['value']
  end
end
