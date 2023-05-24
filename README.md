# Future-Now Database System
Database System for a hypothetical asset management company.


## Case Study: FutureNow Asset Management

### Overview:
FutureNow is an asset management company that grows the wealth of its clients. They identify clients' financial goals and work to accomplish them via portfolio management—buying and managing stocks, bonds, and funds. 

### Operations:
FutureNow Asset Management has two categories of clients: private clients and institutional clients. Clients within each category can either allow the company to manage their wealth or seek financial advice regarding their assets. For clients that seek only financial advice a flat fee is charged by the Advisor Services Department for consultation. For clients who request asset management, the Advisor Services conduct a risk profile of that client, after which the Administrative Department opens an account for them. The client is then required to make a deposit which would be used to purchase a particular investment based on their risk profile. Each transaction the client makes (whether a deposit or withdrawal) is tracked from then on, for use in generating a transactional statement. For each client, an investment portfolio records the number of investments made and the total value of the assets under management. Interests on investments are paid into clients’ accounts on maturity dates (at maturity both interest and principal are paid into the client’s account). An investment statement is issued at the end of a period indicating all the client’s investments.

### Database System Functionalities:
The design should enable:
-	Management to view all mature investments to ensure they are credited into client accounts
-	Management to view the most used investment type to help develop future investments strategies for clients
-	Management to view number and the total value of the Assets Under Management (AUM) for each client
-	Management to view the portfolio of each client
-	Management to view clients’ most profitable investments
-	Management to view all transactions made by a client for issuing of a transactional statement

### Logical Tables
-	Accounts (account_id, bank_id, telephone, balance, date_created, portfolio_id, total_assets_under_management)
-	Clients (telephone, employee_id, email, address)
-	Private Clients (telephone, first_name, last_name, date_of_birth)
-	Institutional Clients (telephone, institution_name)
-	Investments (investment_id, portfolio_id, transaction_id, telephone, investment_type_id, reason_for_investment, investment_details, source_of_deposit, principal, rate, maturity_date)
-	Investment Type (investment_type_id, investment_type_name)
-	Transactions (transaction_id, account_id, amount, transaction_date)
-	Banks (bank_id, bank_name, bank_location)
-	Employees (employee_id, department_id, first_name, last_name, date_of_birth, email, telephone, employment_date)
-	Departments (department_id, department_name)

