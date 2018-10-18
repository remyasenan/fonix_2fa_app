module SmsSender
  require 'zensend'
  def self.zensend_send_sms(body,number)
    client = ZenSend::Client.new("5ohP3rbJySErYziasH29gQ")
    sms_response = client.send_sms({
                                       originator: "ZENSEND",
                                       body: body,
                                       numbers: [number]
                                   })
  end
end
