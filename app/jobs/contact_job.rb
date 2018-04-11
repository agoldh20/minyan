class ContactJob < ApplicationJob
  queue_as :default

  def perform(phone_number)
    begin
       @client = Twilio::REST::Client.new(ENV['twilio_sid'], ENV['twilio_auth_token'])
       message = @client.messages.create(
           body: "Will you be at the 1:35 minyan today?",
           to: phone_number,    
           from: ENV['twilio_number']) 
    rescue Twilio::REST::TwilioError => e
       puts e.message
    end
  end
end
