
require 'scale'

class ScaleApiController < ApplicationController
    # POST /scale_api
    def create
        scale = Scale.new(api_key: 'test_225c99c8af82c803a3215aca01e37b46', callback_auth_key: 'test_auth_7ebedf8751ee72f4ecda867c15ce3372')
        
        callback = scale.build_callback params, callback_key: request.headers['scale-callback-auth']
        return render status: 403 unless callback.verified? # Render forbidden if verifying the callback fails
        
        callback.response # Response content hash (code and result)
        callback.task     # Scale::Api::Tasks object for task type
        
    end
end
