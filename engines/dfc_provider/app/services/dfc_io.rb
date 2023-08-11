# frozen_string_literal: true

# Our interface to the DFC Connector library.
module DfcIo
  # Serialise DFC Connector subjects as JSON-LD string.
  def self.export(*subjects)
    return "" if subjects.empty?

    DfcLoader.connector.export(*subjects)
  end

  def self.import(json_string_or_io)
    DfcLoader.connector.import(json_string_or_io)
  end
end
