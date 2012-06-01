# encoding: UTF-8
module Dibs
  module Results
    class Authorize < DibsResult

      def result_text
        case self.reason
          when "0" then "Rejected by acquirer."
          when "1" then "Communication problems."
          when "2" then "Error in the parameters sent to the DIBS server. An additional parameter called \"message\" is returned, with a value that may help identifying the error."
          when "3" then "Error at the acquirer."
          when "4" then "Credit card expired."
          when "5" then "Your shop does not support this credit card type, the credit card type could not be identified, or the credit card number was not modulus correct."
          when "6" then "Instant capture failed."
          when "7" then "The order number (orderid) is not unique."
          when "8" then "There number of amount parameters does not correspond to the number given in the split parameter."
          when "9" then "Control numbers (cvc) are missing."
          when "10" then "The credit card does not comply with the credit card type."
          when "11" then "Declined by DIBS Defender."
          when "20" then "Cancelled by user at 3D Secure authentication step"
        end
      end

    end
  end
end
