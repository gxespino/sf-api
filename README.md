# Smarter Flips - API

Smarter Flips is a SaaS solution for Real Estate Investors.
This specific repo is the Rails 5 API powering the React frontend.
The React frontend is located [here](https://github.com/gxespino/sf-frontend).

## Development

### Rules of the road

This project is now following Sandi Metz's Rules.

You can read a [description of the rules here](http://robots.thoughtbot.com/post/50655960596/sandi-metz-rules-for-developers).

All new code should follow these rules. If you make changes in a pre-existing
file that violates these rules you should fix the violations as part of
your work.

### Setup

1. Get the code.

        % git clone git@github.com:gxespino/sf-api.git

2. Setup your environment.

        % bin/setup


4. Create a test user in Rails console

        % rails console

        % User.create(email: 'test@email.com', password: 'password')

5. Start the Rails server

        % rails server

6. Verify that the app is up and running.

        % curl localhost:3000/v1/login --ipv4 --data 'email=test@email.com&password=password'

Credits
-------

![Smarter Flips](http://uploads.webflow.com/57e684d285a476a775f13ad4/57f0a285a1f3da343caa2c2e_logo-with-icon%402x-p-500x55.png)

This application is maintained and funded by [Smarter Flips, Inc](http://smarterflips.com)

The names and logos for Smarter Flips are registered trademarks of
Smarter Flips, Inc.

License
-------

This application is Copyright © 2016 Smarter Flips, Inc.
