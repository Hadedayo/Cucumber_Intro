Given("I access the BBC login page") do
  bbc_home_page.visit_home_page
  bbc_home_page.sign_in_on_bbc_site
  sleep 3
end

Given("I input incorrect username details") do
  login_page.fill_in_email_or_username_field('abc123gurney@hotmail.co.uk')
  sleep 3
end

Given("I input valid password") do
  login_page.fill_in_password_field('test12345678')
  sleep 3
end

When("I click the sign in button") do
  login_page.click_sign_in_button
  sleep 3
end

Then("I receive an error for not finding the account") do
  expect(login_page.get_error_text_for_invalid_email_valid_password).to eq login_page.error_for_incorrect_email_valid_password
end

Given("I input the correct username details") do
  login_page.fill_in_email_or_username_field('troy@hotmail.co.uk')
end

Given("I input an invalid password") do
  login_page.fill_in_password_field('smilebaby123')
end

Then("I receive an error for the wrong password") do
  expect(login_page.get_error_text_for_valid_email_invalid_password).to eq login_page.error_for_valid_email_invalid_password
  sleep 2
end
