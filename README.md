# Flickr Photo Feed App

## Introduction
This Rails application fetches photos from Flickr API based on user IDs and displays them on the home page. Follow the instructions below to set up and use the application.

## Setup
1. Go to the [Flickr API Docs](https://www.flickr.com/services/api/) and click on "Create an App" at the top.
2. Follow the steps to get your API key. Sign in or sign up for Flickr and select "Apply for a non-commercial key".
3. Copy both your API key and secret key somewhere accessible.
4. While logged in, copy your Flickr ID from the browser address bar by navigating to the "You" link on the top navbar. It will look like `https://www.flickr.com/photos/yourIDhere/`.
5. Upload a few photos to your photostream on Flickr.

## Installation
1. Colone the repo.
2. CD into the project directory.
3. Run `bundle install`.
4. Make sure you have your `FLICKR_API_KEY` and `FLICKR_SHARED_SECRET` environment variables are set in the environment.

## Usage
1. Start your Rails server.
2. Access the home page of your app in your browser.
3. Enter a Flickr user ID in the form and submit.
4. View the photos from the specified user ID on the page.
5. Optionally, ask for your friends' Flickr IDs or find random photofeeds on the web to view them in your app.

## Note
Ensure that you handle API key securely and responsibly to protect your application and user data.