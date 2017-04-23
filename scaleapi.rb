require 'scale'
scale = Scale.new(api_key: 'test_225c99c8af82c803a3215aca01e37b46')

scale.create_categorization_task({
                                 callback_url: 'http://www.example.com/callback',
                                 instruction: 'Is this company in good standing (active) according to the Secretary of State? To check, visit the CA Secretary of State website <https://businesssearch.sos.ca.gov/> and search for the company name. If the result is listed as "inactive" "SUSPENDED" then they are not in good standing',
                                 attachment_type: 'text',
                                 attachment: ' Ridgemont Outfitters, Inc.',
                                 categories: ['yes', 'no/inactive']
                                 })
