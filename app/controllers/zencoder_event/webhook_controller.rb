module ZencoderEvent
  class WebhookController < ActionController::Base
    def event
      ZencoderEvent.instrument(params)
      head :ok
    rescue ZencoderEvent::UnauthorizedError
      head :unauthorized
    end
  end
end
