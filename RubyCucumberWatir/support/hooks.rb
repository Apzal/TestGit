Before do|scenario|
  puts scenario.name
  # @browser= Watir::Browser.new :chrome
  @browser=Watir::Browser.new :chrome,options: {options: {'useAutomationExtension' => false}},:switches => %w[--no-sandbox --disable-notifications --disable-infobars --start-maximized]
  @browser.goto('https://www.google.com')
end
