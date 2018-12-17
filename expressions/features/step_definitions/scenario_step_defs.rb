Given("I have more than one data row in my example table") do
  #ok to be blank in this instance
end

Given(/^includes a (.*) and (.*) as an integer$/) do |name, age|
  age = age.to_i
  expect(name).to be_kind_of String
  expect(age).to be_kind_of Integer
  puts "-----------Row has been tested-----------"
end

Then(/^I can print the (.*) & (.*) are correct$/) do |int|
  age = age.to_i
  expect(name).to eq 'Dave'.or eq ('Tim')
  expect(age).to eq (23).or eq (34)
end
