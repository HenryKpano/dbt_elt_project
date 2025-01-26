Welcome to my dbt project!

This project is to create models in BigQuery and connect the models to Apache Superset using Preset.io for visualization purposes.

Try running the following commands:
- dbt run
- dbt test

## Models created
- Customers: 
    This model creats the total information about the customers in the company.
    Columns such as id, first_name, last_name, first_order, most_recent_order, number_of_orders

- Payments:
    This model creats the total information about customers payments and statuses relating to their transactions.
    Columns such as payment_id, paymentmethod, payment_status, amount, 
    payment_date, user_id, , order_date, order_status, first_name, last_name

## Seed Model created
- Stadium: CSV file to create model into BigQuery


## Model Test Cases Written
- Cutomers: 
    first name not null
    last name not null

- Payments:
    payment_id unique, not null
    paymentmethod not null

How to setup all aspects and run this project smoothly can be found in the article link below
- Henry Medium Post:[Click Here]()

### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
