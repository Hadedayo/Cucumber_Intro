require_relative 'pages/home_page'
require_relative 'pages/login_page'

module BbcSite

  def bbc_home_page
    Homepage.new
  end

  def login_page
    Loginpage.new
  end

end
