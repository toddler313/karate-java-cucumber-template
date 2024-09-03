Feature: Search for must see places in big cities

  Background:
    * configure driver = { type: 'chrome' }

  Scenario: Best places to visit in San Diego
    Given driver 'https://google.com'
    And input('textarea[name=q]', 'Places to see in San Diego')
    When click('input[name=btnI]')
    Then waitForUrl('https://www.tripadvisor.com/Attractions-g60750-Activities-San_Diego_California.html')