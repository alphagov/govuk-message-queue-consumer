# -*- coding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'govuk_message_queue_consumer/version'

Gem::Specification.new do |s|
  s.name = "govuk_message_queue_consumer"
  s.version = GovukMessageQueueConsumer::VERSION
  s.authors = ["GOV.UK Dev"]
  s.summary = "AMQP message queue consumption with GOV.UK conventions"
  s.description = "Avoid writing boilerplate code in order to consume messages from an AMQP message queue. Plug in queue configuration, and how to process each message."
  s.homepage = "https://github.com/alphagov/govuk_message_queue_consumer"
  s.email = ["govuk-dev@digital.cabinet-office.gov.uk"]

  s.files = Dir.glob("lib/**/*") + %w{README.md Rakefile}
  s.test_files = Dir["spec/*"]
  s.require_path = 'lib'

  s.add_dependency 'bunny', '~> 2.2.0'

  s.add_development_dependency 'gem_publisher', '~> 1.5.0'
  s.add_development_dependency 'rspec', '~> 3.3.0'
  s.add_development_dependency 'rake', '~> 10.4.2'
end
