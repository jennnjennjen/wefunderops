require 'scale'
scale = Scale.new(api_key: 'live_01dc22fe65874d207016e61fc62f8ab1')

scale.create_categorization_task({
                                 callback_url: 'https://wefunderops.herokuapp.com/scale_api',
                                 instruction: 'Is this company in good standing (active) according to the Secretary of State? To check, visit the CA Secretary of State website <https://businesssearch.sos.ca.gov/> and search for the company name. If the result is listed as "inactive" "SUSPENDED" then they are not in good standing',
                                 attachment_type: 'text',
                                 attachment: ' Ridgemont Outfitters, Inc.',
                                 categories: ['yes', 'no/inactive']
                                 })
