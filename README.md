# conduitBackend

**Conduit API backend automation**

**About the project:**
Conduit is a platform that we have developed for one of our clients
which is constantly growing.
This system allows its users to share reading articles from different
categories (similar to Medium), where it is possible to perform the following actions
among its user community:
● Like posts<br/>
● Leave comments on posts<br/>
● Follow/Unfollow other users<br/>

**_Notes:_**

1. [ ] **All project work is on the Develop branch**
2. [ ] **The project was created and executed into a windows system.**

**Features:**
We have different features into each endpoint and request method, such as:
Base URL: https://angular-conduit-node.herokuapp.com/api

| Method   | Endpoint        | Feature               |
|----------|-----------------|-----------------------|
| POST     | users           | registerUser.feature  |
| POST     | article         | postArticle.feature   |
| DELETE   | article/{slug}  | deleteArticle.feature |

Every endpoint mentioned before has different scenarios to validate the response and status
code to make sure everything is going well with the API response to the requests by users.

| Feature                | Scenario                                                                                                     |
|------------------------|--------------------------------------------------------------------------------------------------------------|
| registerUser.feature   | *Check the service POST method<br/>*Register a new user<br/>*Validate the email using unsupported data types |
| postArticle.feature    | *Check the services by POST method<br/>*Post a new article                                                   |
| deleteArticle.feature  | *Success DELETE method<br/>*Delete an article                                                                |

**Previous requirements and Set up:**
To make sure that everything goes ok, to execute the project you need to have:

* Java, JDK version 1.8.0.33
* Maven, version 3.8.6 (As environment variable)
* JUnit5
* Karate framework
* Cucumber framework
* IDE

**Design pattern:**
The design pattern used is Page Object Model (POM), applying good practices with BDD methodology.

**Execution:**
There are two ways to execute the project:

Individually:
Each feature has its own runner class, so you are able to execute every feature individually.

| Feature                | Runner          |
|------------------------|-----------------|
| registerUser.feature   | registerUser    |
| postArticle.feature    | postArticle     |
| deleteArticle.feature  | deleteArticle   |

Parallel:
You can run all tests in parallel form, so you will be able to get a general report executing just a runner class:

| Feature                |     Runner     |
|------------------------|:--------------:|
| registerUser.feature   | AllFeatureTest |
| postArticle.feature    |                |
| deleteArticle.feature  |                |

**Reports:**
We have reports to check once you run the tests, to view reports you need to go to the target directory that is
generated every time when an individual test or parallel test is executed.

Path to get reports in target directory:
target/cucumber-html-reports/overview-features.html

**Author:**
Edwin Cuadro
QA Junior. 




