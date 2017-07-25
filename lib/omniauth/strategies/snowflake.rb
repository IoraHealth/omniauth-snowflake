require 'omniauth'
require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Icis < OmniAuth::Strategies::OAuth2
      option :client_options, { :site => 'https://snowflake.icisapp.com' }
      option :info_url, '/api/v2/me.json'

      uid { raw_info[raw_info.keys.first]["uid"] }

      info { raw_info }

      def authorize_params
        super.tap do |params|
          if request.params['state']
            params[:state] = request.params['state']

            session['omniauth.state'] = params[:state]
          end
        end
      end

      def raw_info
        @raw_info ||= access_token.get(options.info_url).parsed
      end
    end
  end
end
