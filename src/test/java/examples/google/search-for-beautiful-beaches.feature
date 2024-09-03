Feature: Search for beautiful beaches in Australia

  Background:
    * configure driver = { type: 'chrome' }

  Scenario: Best beaches to visit in Brisbane, Australia
    Given driver 'https://google.com'
    And input('textarea[name=q]', 'Beautiful beaches to visit in Brisbane, Australia')
    When click('input[name=btnI]')
    Then waitForUrl('https://www.tripadvisor.com/Attractions-g60750-Activities-San_Diego_California.html')
