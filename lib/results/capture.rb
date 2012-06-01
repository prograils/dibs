# encoding: UTF-8
module Dibs
  module Results
    class Capture < DibsResult

      def result_text
        case self.reason 
          when "0" then "Accepted"
          when "1" then "No response from acquirer."
          when "2" then "Timeout"
          when "3" then "Credit card expired."
          when "4" then "Rejected by acquirer."
          when "5" then "Authorisation older than 7 days. "
          when "6" then "Transaction status on the DIBS server does not allow capture."
          when "7" then "Amount too high."
          when "8" then "Error in the parameters sent to the DIBS server. An additional parameter called \"message\" is returned, with a value that may help identifying the error."
          when "9" then "Order number (orderid) does not correspond to the authorisation order number."
          when "10" then "Re-authorisation of the transaction was rejected."
          when "11" then "Not able to communicate with the acquier."
          when "12" then "Confirm request error"
          when "14" then "Capture is called for a transaction which is pending for batch - i.e. capture was already called"
          when "15" then "Capture was blocked by DIBS."
        end
      end

    end
  end
end
