# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

Models:
    -User
        -Admin
    -Posts
    -Comments

Controllers
    -User
        -Admin
    -Post
    -Comments
    -Sessions

Actions
    -Create -user, posts, comments
    -Read -posts, comments
    -Update -comments (upvote, downvote, react: [funny, sad, wow, love])
    -Delete -User can delete own posts, deletes all child comments.

Flow
    -Sign in or create account
    -Hit button for prompt
    -Enter in text area
    -Submit
    -Hit button to continue story
    -Write in text area when prompted
    -submit to continue thread

Admin
    -can edit posts + comments
    -delete posts + comments
    -can lock threads (prevent future comments from being posted)



