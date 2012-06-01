require 'spec_helper'
describe Dibs do
  context "Authorization" do
    before(:each) do
      @dibs = ::Dibs::Dibs.new(API_CONFIG['merchant'],API_CONFIG['key1'],API_CONFIG['key2'])
      @good_looking_data = {
        :amount=>10000, 
        :currency=>208, 
        :cardno=>'5019100000000000', 
        :expmon=>'06', 
        :expyear=>'24', 
        :cvc=>'684', 
        :orderId=>"abc_test_#{Time.now.to_s.gsub(/\s/, '_')}", 
        :test=>true
      }
    end

    it "should authorize transaction for properly provided data" do
      res = @dibs.authorize(@good_looking_data)
      res.accepted?.should == true
    end

    it "should throw an exception" do
      params = @good_looking_data.delete(:cardno)
      expect { @dibs.authorize(@good_looking_data) }.should raise_error
    end
  end
end
