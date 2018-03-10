# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version -- 2.5.0

* Rails version -- 5.2.0.rc1

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* Travis CI

### Automated Continuous Integration with Travis CI

Continuous Integration (CI) is the practice of integrating new code into the master branch frequently, to help detect merge conflicts, bugs, and improve the quality of the software a development team writes.

CI is usually accompanied by running an application's test suite against the latest code changes, and flagging any test failures that are found. Developers are expected to investigate and fix these failures to maintain a passing test suite and therefore quality.

[Travis CI](https://travis-ci.org) is a build server that helps automate the CI process. Travis CI runs an application's tests against the latest changes pushed to the application's code respository. In this project, Travis CI runs the project's tests (`rake test`) on pull requests and on changes to the master branch.

Travis CI configuration how-to and example:
- [.travis.yml](https://github.com/bennypaulino/coinmine_canary/blob/master/app/.travis.yml) - Travis CI's configuration file (with instructions)
- [coinmine_canary Travis CI build!](https://travis-ci.org/bennypaulino/coinmine_canary)
- Travis CI badge for PortfolioBlog: [![Build Status](https://travis-ci.org/bennypaulino/coinmine_canary.svg?branch=master)](https://travis-ci.org/bennypaulino/coinmine_canary)
