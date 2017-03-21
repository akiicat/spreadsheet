class SpreadSheetCellsChannel < ApplicationCable::Channel
  include NoBrainer::Streams

  def subscribed
    stream_from SpreadsheetCell.all, include_initial: true
  end

  def set_cell_value(message)
    if cell = SpreadsheetCell.where(
        location: message['location']
      ).first
      cell.update! value: message['value']
    else
      cell = SpreadsheetCell.create(
        location: message['location'],
        value: message['value']
      )
    end
  end
end