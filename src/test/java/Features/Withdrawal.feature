Feature: Withdraw money from Account
  As a user who needs to access my allowance
  I want to withdraw money from my account
  So that I can buy items

  Acceptance Criteria
    - I will see my available balance
    - I am only allowed to withdraw in £5 denominations
    - I cannot withdraw more than my balance
    - I will receive an alert when my balance is lees than £10 in my account
    - I will be prompted if i try to withdraw an amount less than £5

  Background:
    Given I have logged into my account

  Scenario: Withdrawing money from account with sufficient funds
    Given my balance is £100
    When  I withdraw £30
    Then I receive £30
    And receive notification "Your balance is £70"

  Scenario: Withdrawing money from account with insufficient funds
    Given my balance is £20
    When  I withdraw £30
    Then I receive £0
    And receive notification "You have insufficient funds"

  Scenario: Withdrawing money from account
    Given my balance is £100
    When  I withdraw £12
    Then I receive £0
    And receive notification "Please enter an amount in multiples of £5"

    Given my balance is £100
    When  I withdraw £29
    Then I receive £0
    And receive notification "Please enter an amount in multiples of £5"

  Scenario: Withdrawing money from account
    Given my balance is <balance>
    When  I withdraw <withdraw>
    Then I receive <receive>
    And my remaining balance is shown as <remaining>
    And receive notification "<alert>"

    | balance | withdraw | receive | remaining | alert |
    | 100     | 31       | 0       | 100       | "Please enter and amount in multiples of £5" |
    | 100     | 30       | 70      | 70        | "Your balance is £70"                        |
    | 100     | 29       | 0       | 100       | "Please enter and amount in multiples of £5" |
    | 100     | 110      | 0       | 100       | "You have insufficient funds"                |



