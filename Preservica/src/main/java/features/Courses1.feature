Feature: Search for courses
  Student can search to find courses that he is interested in so that he can register
  to attend the courses

  Background: Student is on home page of university website

  Scenario: I want to make sure student not able to search for course
    When I can search for university course
      | course_name | expected_result  |
      |             | Required         |
      | *Management | Search not found |
      | Techn_ology | Search not found |
    Then I am not able to see matching Titles and Course IDs


  Scenario: Student search for courses
    When I can search for university course
      | course_name |
      | Finance     |
      | Management  |
      | Technology  |
      | Language    |
    Then I am able to see matching Titles and Course IDs
    And I am able to register and attend the course




