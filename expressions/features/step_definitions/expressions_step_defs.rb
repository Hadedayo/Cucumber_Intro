Given("I provide an integer of {int}") do |arg1|
  @arg1 = arg1
end

Then("I will be able to test the integer") do
  expect(@arg1).to eq 14
end

Given("I provide an float of {float}") do |float|
  @float_variable = float
end

Then("I will be able to test the float") do
  expect(@float_variable).to be_kind_of Float
end

Given("I provide specific word {word}") do |word|
  @captured_word = word
end

Then("I will be able to test the word") do
  expect(@captured_word).to be_kind_of String
  expect(@captured_word).to eq 'banana'
end

Given(/^I provide specific something like (.*) I can capture it using a regex$/) do |cheese|
  @captured_cheese = cheese
end

Then("I will be able to test the captured regex") do
expect(@captured_cheese).to eq 'cheddar'
end
