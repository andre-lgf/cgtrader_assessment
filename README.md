# README
> &nbsp;
> ## Problem statement
>Create an application that helps users find the most relevant prompts based on entered words
>
>## Objective
>Deliver an application prototype to answer the above problem statement.
By prototype, we mean:
>* something usable, yet as simple as possible
>* UI / design is not important
>
>We expect to use this prototype as a starting point to discuss current implementation details and ideas for improvement.
>
>## Tech must-haves
>* Ruby on Rails
>* MySQL or PostgreSQL
>* A search engine such as ElasticSearch or any other
>* A web interface (can be VERY simple)
>
>### Bonus points
>* Application is dockerized
>* Application is hosted on Heroku
>### Data
>* [Data Set](https://huggingface.co/datasets/Gustavosta/Stable-Diffusion-Prompts)
>&nbsp;

# Instructions
This solution was built using Ruby 3.2.2 and Rails 7.0.4.3. It has a docker-compose file with the required dependencies.

First, ensure you have Docker installed and running.

### Build and Start containers
To build and start containers up, navigate to the application root inside terminal and run ```docker-compose up --build```. It will download and configure the Ruby base image, copy the application to the image, download Elasticsearch, Redis, Nginx and PostgreSQL.

### Setup environment
After building and starting the containers, open a new terminal session and run the following command to create the database, apply the migrations, populate and reindex the records in Elasticsearch:
```docker-compose run --rm assignment rails db:create db:schema:load db:migrate db:seed```

### Accessing the application
Since we are using Nginx to serve the application, once the containers are running, simply go to [localhost](http://localhost) without passing any port to access it.
