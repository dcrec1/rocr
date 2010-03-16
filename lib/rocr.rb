module Rocr
  module Gocr
    def self.recognize(path)
      `gocr #{path}`
    end
  end
end
