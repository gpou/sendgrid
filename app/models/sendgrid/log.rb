class Sendgrid::Log < ActiveRecord::Base
  self.table_name_prefix = 'sendgrid_'
end
