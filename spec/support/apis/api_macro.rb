module ApiMacro
  def fake_response(status:, json:, route:, method:, params:nil, headers:nil)
    @api_response ||= File.read(Rails.root.join("spec/support/apis/#{json}"))
    @faraday_response ||= double(
        'faraday_response', 
        status: status, 
        body: @api_response
    )

    faraday_parameters = ["http://#{ENV['HIRING_URI']}#{route}"]
    faraday_parameters << params unless params.nil?
    faraday_parameters << headers unless params.nil?

    allow(Faraday).to receive(method).with(
        *faraday_parameters
    ).and_return(
        @faraday_response
    )
    
  end
end
  