# Ruby on Rails Tech Test

RailsGuest is a basic guest book application which allows users to add messages at events (weddings for instance). 

To add an entry the user types in a name and a message. There is also a link at the top of the page to show only the messages added by the user.

## Getting Started

To start, please clone (or download) this repo to your local. Create a new public repo on your GitHub account and add this to your master branch.

To run locally:
- run `gem install foreman`
- run `bundle install`
- run `rails db:migrate`
- run `foreman start`

Look out for the application port on the foreman processes info (it should be 127.0.0.1:5000 by default).

## Task 1 - Bug Fixing

As a new developer on the RailsGuest team, you’ve been tasked with looking into fixing some bugs, as a way to get familiar with the codebase. 

The three issues you’ve been tasked with investigating are:

- The application still has 'Ruby on Rails Test' as the browser page title. This should be changed to 'Rails Guest' to reflect its true purpose.
- New messages are displayed at the bottom of the page. Users would like to see their new messages at the top of the list.
- Users are not able to filter messages to show only theirs. Clicking on 'My Messages' still shows all the messages.

Once these are done run the test suite and ensure all specs pass.

## Task 2-  Adding a new feature

RailsGuest Administrators would like to be able to manage messages and remove those that are not appropriate. 

Add an admin section to the RailsGuest meeting the following requirements:

- Only one set of credentials (username and password) are needed.
- Users should not be able to access the admin section
- An admin should be able to mark a message as hidden.
- Users on the messages page should not be able to view messages that have been marked as hidden.
- When an admin is logged in, the messages page should show all the messages (including the hidden ones) and the hidden messages should be in red text.

## Submissions

To submit, create a new branch, push your changes, create a Pull Request and send the link.
