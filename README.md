# cl_demo_app

Demo app for classlist

## Overview

Implemented the app according to the brief to allow login and view of a user profile details page.

Some notes on implementation

- The app has only been tested in the Android emulator, not on a real device so far
- The implementation focuses on happy path & MVP. Some basic error handling has been added for authentication. Areas for improvement noted below
- Additional packages used were request, shared_preferences and spinkit


Areas for improvement

- Better handling of authentication errors including display of a message to the user
- improved handling of state between app restarts. At the moment the loading page works but is not ideal.
- Layout of the profile details page could be improved, particularly tabular data
- Validation of login input, regex for email and password to enforce standards
- Checking for presence of elements in the API response. The code assumes that certain attributes will be present and if not null or index errors may occur
- Refactoring of authentication logic into a single auth service class, rather than spread across a number of classes
- Use of a local db for user state and other local app configuration