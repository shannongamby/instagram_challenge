[![Build Status](https://travis-ci.com/shannongamby/instagram_challenge.svg?branch=master)](https://travis-ci.com/shannongamby/instagram_challenge)

# FAKE-STAGRAM

This is an instagram clone built with Ruby on Rails and deployed on Heroku: https://fake-stagram.herokuapp.com/  
NOTE: Images are deleted every 24 hours due to the current hosting plan!

## My Approach
My reasons for beginning this project are mainly rooted in wanting to get more familiar with ORMs and databases in general. But there have been other positive side effects too! 
  
Before this project: 
- I had never set up a Rails app from scratch.
- I hadn't really delved very deep into CSS.
  
Now:  
- Working on this insta-clone has enabled me to explore Rails more deeply than before. 
- I've gained a better working knowledge of ways I can go about testing a Rails app.
- CSS is less of a mystery.
- User authentication is second nature.

## User Stories
```
As a user,
So that I can keep my friends updated,
I'd like to be able to make a new post.
```
```
As a user,
So that I can post as me,
I'd like to create an account.
```
```
As a user,
So that no one else can post as me,
I'd like to be able sign out.
```
```
As a user, 
So that I can see my friends' posts,
I'd like them displayed on my feed.
```
```
As a user,
So that I can stroll down memory lane,
I'd like a profile page where only my posts are displayed.
```
----

### To set up the project
Clone this repo and run:
```
$ bundle install
$ bin/rails db:create
$ bin/rails db:migrate
```
Run the tests:
```
$ bin/rails exec rspec 
```
Start the server:
```
$ bin/rails server 
```
