Feature: Place Order
  Scenario: Placing an order
    Given I have the available items in stock
      | BookId  | Quantity | Price |
      | 1       | 10       | 29.99 |
    When An user place an order for one item
    Then One item should be removed from my inventory
    And the available items in stock should be
      | BookId  | Quantity | Price |
      | 1       | 9        | 29.99 |
