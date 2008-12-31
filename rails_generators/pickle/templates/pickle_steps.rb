# this file generated by script/generate pickle

Given(/^#{CaptureModel} exists$/) do |name|
  create_model(name)
end

Given(/^#{CaptureModel} exists with #{CaptureFields}$/) do |name, fields|
  create_model(name, fields)
end

Then(/^#{CaptureModel} should exist with #{CaptureFields}$/) do |name, fields|
  find_model(name, fields).should be_present
end

Then(/^#{CaptureModel} should (?:be|have) (?:an? )?([\w ]+)$/) do |name, predicate|
  predicate_method = predicate.gsub(' ', '_')
  model(name).should send("be_#{predicate_method}")
end

Then(/^#{CaptureModel} should not (?:be|have) (?:an? )?([\w ]+)$/) do |name, predicate|
  predicate_method = predicate.gsub(' ', '_')
  model(name).should_not send("be_#{predicate_method}")
end