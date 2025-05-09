# frozen_string_literal: true

Given(/^a$/) do
  sleep 0.10
end

When(/^b$/) do
  sleep 0.25
end

When(/^bad$/) do
  if ENV['FAIL']
    expect(1).to eq 0
  else
    expect(1).to eq 1
  end
end

Then(/^c$/) do
  expect(1).to eq 1
end
