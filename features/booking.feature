Feature: Booking tickets
    Scenario: Should booking one ticket
        Given user is on 'http://qamid.tmweb.ru/client/index.php' page
        When user choose day 
        When user choose time 
        When user select 1 row 5 seat 
        When user click button
        Then user see text 'Получить код бронирования'

    Scenario: Should booking one ticket
        Given user is on 'http://qamid.tmweb.ru/client/index.php' page
        When user choose day 
        When user choose time 
        When user select 1 row 6 seat
        When user select 1 row 7 seat
        When user click button
        Then user see text 'Получить код бронирования'

   Scenario: Should booking a booked ticket
        Given user is on 'http://qamid.tmweb.ru/client/index.php' page
        When user choose day 
        When user choose time
        When user select the booked place
        Then user see button disabled 'true'