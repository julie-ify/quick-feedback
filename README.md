# QuickFeedback – Real-Time Feedback Board with Rails & Hotwire

> QuickFeedback is a lightweight Ruby on Rails application showcasing Hotwire (Turbo + Stimulus) for real-time UI updates without writing heavy JavaScript.

> Users can submit feedback messages and see them appear instantly across all connected sessions. They can also "like" feedback, with like counts updating live for everyone — all powered by Turbo Streams and Action Cable.

## Features

- Turbo Streams Broadcasting – New feedback and likes are pushed live to all connected clients

- Turbo Frames – Only the feedback list and form update, no full page reload

- Stimulus Controller – Adds smooth fade-in animation for new feedback items

- No Authentication Needed – Works for all visitors

- Action Cable WebSockets – Real-time updates without extra JS libraries

## Tech Stack

- Ruby on Rails 7
- Hotwire (Turbo + Stimulus)
- Action Cable
- PostgreSQL
