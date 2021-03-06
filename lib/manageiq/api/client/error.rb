module ManageIQ
  module API
    class Client
      class Error
        attr_accessor :status
        attr_accessor :kind
        attr_accessor :message
        attr_accessor :klass

        def initialize(status = 0, json_response = {})
          update(status, json_response)
        end

        def clear
          update(0)
        end

        def update(status, json_response = {})
          @status = status
          @kind, @message, @klass = nil
          error_hash = json_response["error"]
          if status >= 400 && error_hash.present?
            @kind, @message, @klass = error_hash.values_at("kind", "message", "klass")
          end
        end
      end
    end
  end
end
