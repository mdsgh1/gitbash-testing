package Steps;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class MyStepdefs {
    @Given("User is on login page")
    public void userIsOnLoginPage() {
        System.out.println("userIsOnLoginPage called");
    }

    @When("user enters username and password")
    public void userEntersUsernameAndPassword() {
        System.out.println("userEntersUsernameAndPassword called");
    }

    @And("clicks on login button")
    public void clicksOnLoginButton() {
        System.out.println("clicksOnLoginButton called");
    }

    @Then("User is navigated to the login page")
    public void userIsNavigatedToTheLoginPage() {
        System.out.println("userIsNavigatedToTheLoginPage called");
    }
}
