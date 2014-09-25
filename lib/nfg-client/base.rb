module Base
	class BaseClient
		protected

		# Adds client credentials to hash of parameters
	    #
	    # Arguments:
	    #   params: (Hash)
	    def add_credentials_to_params(params)
	      return params unless params.is_a? Hash
	      credentials = {
	        'PartnerID' => @partner_id,
	        'PartnerPW' => @partner_password,
	        'PartnerSource' => @partner_source,
	        'PartnerCampaign' => @partner_campaign
	      }
	      credentials.merge(params)
	    end
	end
end