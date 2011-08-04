require 'redcloth'

module Lokka
  module Textile
    module Entry
      def body_html
        RedCloth.new(attribute_get(:body)).to_html
      end
    end

    module Helpers
      def textile_to_html text
        RedCloth.new(text).to_html
      end
    end
  end
end

class Entry
  include Lokka::Textile::Entry
end

module Lokka
  module Helpers
    include Lokka::Textile::Helpers
  end
end
