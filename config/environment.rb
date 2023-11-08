# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

#The following code is to remove the field_with_errors div that Rails automatically generates when a form field has an error.
ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
    html_tag.html_safe
  end