# encoding: UTF-8
module Dibs
  module Results
    class DibsResult
      attr_reader :result_parsed
      attr_reader :result

      def initialize(result_string)
        @result = result_string
        parts = @result.split(/&|=/)
        @result_parsed = Hash[*parts]
        
      end

      def accepted?
        @result_parsed['status'] == 'ACCEPTED'
      end

      def declined?
        not self.accepted?
      end

      def method_missing(sym, *args, &block)
        return @result_parsed[sym.to_s] if @result_parsed.has_key?(sym.to_s)
        super(sym, *args, &block)
      end

      def result_text
        "not implemented"
      end
      
    end

  end
end
