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





devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  上のやつはuserコントロラー作ってからルーティングにはる。



  <%= attachment_image_tag @user, :profile_image, :fill, 60, 60, format: 'jpeg', class: "img-circle pull-left profile-img", fallback: "no_image.jpg" %>
  user showアクションにはる


  <h1>Book detail</h1>

<div class="profile-container">
	<%= attachment_image_tag @user, :profile_image, :fill, 60, 60, format: 'jpeg', class: "img-circle pull-left profile-img", fallback: "no_image.jpg" %>
</div>

<a><%= @book.title %></a>

<a><%= @book.body %></a>

<%= link_to "Destroy", book_path(@book), method: :delete, class: "btn btn-danger" %>
bookモデルのshowアクションのやつ