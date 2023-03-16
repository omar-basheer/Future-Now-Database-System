DROP DATABASE IF EXISTS FutureNowDB_54042024;
CREATE DATABASE FutureNowDB_54042024;
USE FutureNowDB_54042024;


create table Departments(
    department_id int auto_increment primary key,
    department_name varchar(50)
);

insert into Departments(department_name) VALUES ('Advisor Services');
insert into Departments(department_name) VALUES ('Administrative Department');


create table Banks(
    bank_id int primary key auto_increment,
    bank_name varchar(30),
    location varchar(50)
);

insert into Banks(bank_name, location)values('Standard Chartered', 'Accra');
insert into Banks(bank_name, location)values('Agric Development Bank', 'Accra');
insert into Banks(bank_name, location)values('Premium Bank', 'Accra');
insert into Banks(bank_name, location)values('Ecobank Ghana', 'Accra');
insert into Banks(bank_name, location)values('Beige Capital', 'Accra');


create table Transaction_Type(
    transaction_type_id int primary key,
    transaction_type_name varchar(20) not null
);

insert into Transaction_Type(transaction_type_id, transaction_type_name) values(001, 'deposit');
insert into Transaction_Type(transaction_type_id, transaction_type_name) values(002, 'withdrawal');


create table Employees(
    employee_id int primary key auto_increment,
    department_id int not null,
    first_name varchar(50),
    last_name varchar(50),
    dob date,
    email varchar(60) unique,
    telephone varchar(15) unique,
    employment_date date,
    foreign key (department_id) references Departments(department_id)
);

create table Clients(
    telephone varchar(15) primary key,
    email varchar(50) unique not null,
    employee_id int not null,
    address varchar(20),
    foreign key (employee_id) references Employees(employee_id)
);

create table Private_Clients(
    telephone varchar(15) primary key,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    dob date not null,
    employee_id int not null,
    foreign key (telephone) references Clients(telephone),
    foreign key (employee_id) references Employees(employee_id)
);

create table Institutional_Clients(
  telephone varchar(15) primary key,
  institution_name varchar(50) not null,
  employee_id int not null,
  foreign key (telephone) references Clients(telephone),
  foreign key (employee_id) references Employees(employee_id)
);

insert into Employees(department_id, first_name, last_name, dob, email, telephone, employment_date) values (001, 'Jason', 'Momoa', '1994-12-4', 'jason.momoa@futurenow.com', '0234563456', '2021-5-22');
insert into Employees(department_id, first_name, last_name, dob, email, telephone, employment_date) values (002, 'Elizabeth', 'Hart', '1994-01-4', 'elizabeth.hart@futurenow.com', '0324567489', '2021-5-22');
insert into Employees(department_id, first_name, last_name, dob, email, telephone, employment_date) values (002, 'Kwaku', 'Flick', '2000-10-14', 'kwaku.flick@futurenow.com', '0546773345', '2021-5-22');
insert into Employees(department_id, first_name, last_name, dob, email, telephone, employment_date) values (001, 'Nana-Serwaa', 'Adjaye', '2002-04-22', 'serwaa.adjaye@futurenow.com', '0322456389', '2021-5-22');
insert into Employees(department_id, first_name, last_name, dob, email, telephone, employment_date) values (002, 'Osei', 'Otoo', '2002-10-22', 'osei.otoo@futurenow.com', '0987345621', '2021-5-22');


insert into Clients(telephone, email, employee_id, address) values('0244286234', 'david.tay@hotmail.com', 005, 'Spintex');
insert into Clients(telephone, email, employee_id, address) values('0578324576', 'esther.queen@hotmail.com', 002, 'Tema');
insert into Clients(telephone, email, employee_id, address) values('0234567834', 'edgarg.cook@hotmail.com', 003, 'Airport');
insert into Clients(telephone, email, employee_id, address) values('0645374564', 'patience.parker@viewmail.com', 005, 'Brekuso');
insert into Clients(telephone, email, employee_id, address) values('0564739285', 'o.okomfo@hotmail.com', 002, 'Kaneshie');
insert into Clients(telephone, email, employee_id, address) values('0334445532', 'd.nkansah@hotmail.com', 003, 'Spintex');
insert into Clients(telephone, email, employee_id, address) values('0987654321', 'ohenecaleb@examplemail.com', 002, 'Tema');
insert into Clients(telephone, email, employee_id, address) values('0989876787', 's.nkrumah@viewmail.com', 003, 'Nungua');
insert into Clients(telephone, email, employee_id, address) values('0987980676', 'afi.mawu@hotmail.com', 005, 'Airport');
insert into Clients(telephone, email, employee_id, address) values('0954556655', 'mikeobi@statmail.com', 002, 'Tema');
insert into Clients(telephone, email, employee_id, address) values('0344780989', 'aoun.hammond@hotmail.com', 003, 'Nungua');
insert into Clients(telephone, email, employee_id, address) values('0111223344', 'vuvor.vulcans@hotmail.com', 005, 'Dzorwulu');


insert into Private_Clients(telephone, first_name, last_name, dob, employee_id) VALUES ('0244286234', 'David', 'Tay', '1994-10-10', 005);
insert into Private_Clients(telephone, first_name, last_name, dob, employee_id) VALUES ('0578324576', 'Esther', 'Queen', '1994-01-10', 002);
insert into Private_Clients(telephone, first_name, last_name, dob, employee_id) VALUES ('0234567834', 'Edgar', 'Cook','1994-12-08', 003);
insert into Private_Clients(telephone, first_name, last_name, dob, employee_id) VALUES ('0645374564', 'Patience', 'Parker', '1998-03-10', 005);
insert into Private_Clients(telephone, first_name, last_name, dob, employee_id) VALUES ('0564739285', 'Okomfo', 'Okai', '1997-05-21', 002);
insert into Private_Clients(telephone, first_name, last_name, dob, employee_id) VALUES ('0334445532', 'Daniel', 'Nkansah', '1997-05-21', 003);

insert into Private_Clients(telephone, first_name, last_name, dob, employee_id) VALUES ('0987654321', 'Oheneba', 'Caleb', '1997-05-21', 002);
insert into Private_Clients(telephone, first_name, last_name, dob, employee_id) VALUES ('0989876787', 'Senam', 'Nkrumah', '1997-05-21', 003);
insert into Private_Clients(telephone, first_name, last_name, dob, employee_id) VALUES ('0987980676', 'Afi', 'Mawusi', '1997-05-21', 005);
insert into Private_Clients(telephone, first_name, last_name, dob, employee_id) VALUES ('0954556655', 'Michael', 'Obi', '1997-05-21', 002);

insert into Institutional_Clients(telephone, institution_name, employee_id) VALUES ('0344780989', 'Aoun-Hammond Law', 001);
insert into Institutional_Clients(telephone, institution_name, employee_id) VALUES ('0111223344', 'Vuvor Vulcans', 004);


create table Accounts(
    account_id int primary key auto_increment,
    telephone varchar(15) not null,
    bank_id int not null ,
    balance float(9, 2) not null ,
    date_created date not null ,
    portfolio_id int not null,
    AUM float(9, 2) not null,
    foreign key(telephone) references Clients(telephone),
    foreign key(bank_id) references Banks(bank_id)
);

insert into Accounts(telephone, bank_id, balance, date_created, portfolio_id, AUM) VALUES ('0244286234', 0003, 40567.24,'2021-03-28', 1, 40567.24 );
insert into Accounts(telephone, bank_id, balance, date_created, portfolio_id, AUM) VALUES ('0578324576', 0002, 65567.25, '2021-03-18', 2, 65567.25);
insert into Accounts(telephone, bank_id, balance, date_created, portfolio_id, AUM) VALUES ('0234567834', 0005, 38567.91, '2021-01-02', 3, 38567.91);
insert into Accounts(telephone, bank_id, balance, date_created, portfolio_id, AUM) VALUES ('0645374564', 0005, 44567.47, '2021-05-08', 4, 44567.47);
insert into Accounts(telephone, bank_id, balance, date_created, portfolio_id, AUM) VALUES ('0564739285', 0004, 9567.50, '2021-07-28', 5, 9567.50);
insert into Accounts(telephone, bank_id, balance, date_created, portfolio_id, AUM) VALUES ('0334445532', 0001, 27174.5, '2021-08-18', 6, 28174.50);

insert into Accounts(telephone, bank_id, balance, date_created, portfolio_id, AUM) VALUES ('0987654321', 0001, 27174.5, '2022-06-02', 7, 46200.50);
insert into Accounts(telephone, bank_id, balance, date_created, portfolio_id, AUM) VALUES ('0989876787', 0002, 21174.5, '2021-12-28', 8, 29041.00);
insert into Accounts(telephone, bank_id, balance, date_created, portfolio_id, AUM) VALUES ('0987980676', 0003, 4500.33, '2020-02-02', 9, 6033.00);
insert into Accounts(telephone, bank_id, balance, date_created, portfolio_id, AUM) VALUES ('0954556655', 0004, 1900.02, '2022-10-01', 10, 2001.10);

insert into Accounts(telephone, bank_id, balance, date_created, portfolio_id, AUM) VALUES ('0344780989', 0005, 570634.37, '2022-05-01', 11, 500342.00);
insert into Accounts(telephone, bank_id, balance, date_created, portfolio_id, AUM) VALUES ('0111223344', 0001, 694280.38, '2022-06-03', 12, 694280.00);



create table Transactions(
    transaction_id int primary key auto_increment,
    client_id varchar(15) not null,
    account_id int not null ,
    transaction_type_id int not null,
    amount float(8,2),
    transaction_date date not null,
    foreign key (account_id) references Accounts(account_id),
    foreign key (client_id) references Clients(telephone),
    foreign key (transaction_type_id) references Transaction_Type(transaction_type_id)
);

insert into Transactions(client_id, account_id, transaction_type_id, amount, transaction_date) values('0244286234', 1, 001, 25567.24, '2021-12-28');
insert into Transactions(client_id, account_id, transaction_type_id, amount, transaction_date) values('0578324576', 2,001, 45567.25, '2022-03-5');
insert into Transactions(client_id, account_id, transaction_type_id, amount, transaction_date) values('0234567834', 3, 001, 35567.91, '2022-03-5');
insert into Transactions(client_id, account_id, transaction_type_id, amount, transaction_date) values('0645374564', 4, 001, 34567.47, '2022-07-03');
insert into Transactions(client_id, account_id, transaction_type_id, amount, transaction_date) values('0564739285', 5, 001, 5567.50, '2022-10-05');
insert into Transactions(client_id, account_id, transaction_type_id, amount, transaction_date) values('0334445532', 6, 001, 10567.50, '2022-08-25');
insert into Transactions(client_id, account_id, transaction_type_id, amount, transaction_date) values('0244286234', 1, 001, 15000.00, '2022-07-30');
insert into Transactions(client_id, account_id, transaction_type_id, amount, transaction_date) values('0578324576', 2, 001, 20000.00, '2022-05-14');
insert into Transactions(client_id, account_id, transaction_type_id, amount, transaction_date) values('0234567834', 3, 001, 3000.00, '2022-05-14');
insert into Transactions(client_id, account_id, transaction_type_id, amount, transaction_date) values('0645374564', 4, 001, 10000.00, '2022-09-5');
insert into Transactions(client_id, account_id, transaction_type_id, amount, transaction_date) values('0564739285', 5, 001, 4000.00, '2022-11-05');
insert into Transactions(client_id, account_id, transaction_type_id, amount, transaction_date) values('0334445532', 6, 001, 17607.50, '2022-11-22');
insert into Transactions(client_id, account_id, transaction_type_id, amount, transaction_date) values('0334445532', 6, 002, 1000.50, '2022-12-05');


insert into Transactions(client_id, account_id, transaction_type_id, amount, transaction_date) values('0987654321', 7, 001, 20500.50, '2022-06-12');
insert into Transactions(client_id, account_id, transaction_type_id, amount, transaction_date) values('0989876787', 8, 001, 14040.50, '2022-09-15');
insert into Transactions(client_id, account_id, transaction_type_id, amount, transaction_date) values('0954556655', 10, 001, 1000.50, '2022-03-14');
insert into Transactions(client_id, account_id, transaction_type_id, amount, transaction_date) values('0987654321', 7, 001, 25700.50, '2022-11-25');
insert into Transactions(client_id, account_id, transaction_type_id, amount, transaction_date) values('0989876787', 8, 001, 15000.50, '2023-04-12');
insert into Transactions(client_id, account_id, transaction_type_id, amount, transaction_date) values('0987980676', 9, 001, 3032.50, '2022-02-04');
insert into Transactions(client_id, account_id, transaction_type_id, amount, transaction_date) values('0987980676', 9, 001, 3000.50, '2022-05-25');
insert into Transactions(client_id, account_id, transaction_type_id, amount, transaction_date) values('0954556655', 10, 001, 1000.50, '2022-05-15');


insert into Transactions(client_id, account_id, transaction_type_id, amount, transaction_date) values('0344780989', 11, 001, 500342.00, '2022-05-01');
insert into Transactions(client_id, account_id, transaction_type_id, amount, transaction_date) values('0111223344', 12, 001, 694280.00, '2022-06-03');



create table Risk_Factor(
    risk_factor_id int primary key,
    risk_factor varchar(20)
);

insert into Risk_Factor(risk_factor_id, risk_factor) values (001, 'low-risk');
insert into Risk_Factor(risk_factor_id, risk_factor) values (002, 'moderate-risk');
insert into Risk_Factor(risk_factor_id, risk_factor) values (003, 'high-risk');
insert into Risk_Factor(risk_factor_id, risk_factor) values (004, 'very high-risk');


create table Investement_Type(
    investment_type_id int primary key,
    investment_type_name varchar(35),
    risk_factor_id int ,
    foreign key (risk_factor_id) references Risk_Factor(risk_factor_id)
);

insert into Investement_Type(investment_type_id, investment_type_name, risk_factor_id) values(001, 'Government Bonds', 001);
insert into Investement_Type(investment_type_id, investment_type_name, risk_factor_id) values(002, 'Cash Investment', 001);
insert into Investement_Type(investment_type_id, investment_type_name, risk_factor_id) values(003, 'Public-Entreprise Shares', 002);
insert into Investement_Type(investment_type_id, investment_type_name, risk_factor_id) values(004, 'Private-Entreprise Shares', 003);
insert into Investement_Type(investment_type_id, investment_type_name, risk_factor_id) values(005, 'Property Investment', 004);
insert into Investement_Type(investment_type_id, investment_type_name, risk_factor_id) values(006, 'Hedge Fund Investment', 004);



create table Investments(
    investment_id int primary key auto_increment,
    portfolio_id int,
    telephone varchar(20),
    investment_type_id int,
    investment_details varchar(30),
    reason_for_investment varchar(70),
    source_of_deposit varchar(70),
    principal float(7, 2) not null,
    transaction_id int not null ,
    rate float not null,
    maturity_date date not null,
    risk_factor int not null,
    foreign key(telephone) references Clients(telephone),
    foreign key(telephone) references Clients(telephone),
    foreign key (investment_type_id) references Investement_Type(investment_type_id),
    foreign key (transaction_id) references Transactions(transaction_id),
    foreign key (risk_factor) references Risk_Factor(risk_factor_id)
);


insert into Investments(portfolio_id, telephone, investment_type_id, investment_details, reason_for_investment,  source_of_deposit, principal, transaction_id, rate, maturity_date, risk_factor) VALUES (1, '0244286234', 001, 'Basic Government Bond', 'Ashesi school fees savings', 'two months salary savings', 25567.24, 1, 0.20, '2022-03-28', 002);
insert into Investments(portfolio_id, telephone, investment_type_id, investment_details, reason_for_investment,  source_of_deposit, principal, transaction_id, rate, maturity_date, risk_factor) VALUES (1, '0244286234', 001, 'Basic Government Bond', 'Ashesi school fees savings', 'two months salary savings', 15000.00, 7, 0.20, '2022-08-28', 002);

insert into Investments(portfolio_id, telephone, investment_type_id, investment_details, reason_for_investment,  source_of_deposit, principal, transaction_id, rate, maturity_date, risk_factor) VALUES (2, '0578324576', 002, 'Consolidated Bank shares', 'Family Vacation', 'two months salary savings',45567.25, 2, 0.35, '2022-06-5', 002);
insert into Investments(portfolio_id, telephone, investment_type_id, investment_details, reason_for_investment,  source_of_deposit, principal, transaction_id, rate, maturity_date, risk_factor) VALUES (2, '0578324576', 002, 'GCB shares', 'Family Vacation', 'two months salary savings', 20000.00, 8, 0.30, '2022-09-14', 002);

insert into Investments(portfolio_id, telephone, investment_type_id, investment_details, reason_for_investment,  source_of_deposit, principal, transaction_id, rate, maturity_date, risk_factor) VALUES (3, '0234567834', 003, 'Treasury Bills', 'Pension Fund', 'annual salary savings', 35567.91, 3, 0.25, '2022-06-5', 003);
insert into Investments(portfolio_id, telephone, investment_type_id, investment_details, reason_for_investment,  source_of_deposit, principal, transaction_id, rate, maturity_date, risk_factor) VALUES (3, '0234567834', 003, 'Treasury Bills', 'Pension Fund', 'one month salary savings', 3000.00, 9, 0.26, '2022-09-14', 003);

insert into Investments(portfolio_id, telephone, investment_type_id, investment_details, reason_for_investment,  source_of_deposit, principal, transaction_id, rate, maturity_date, risk_factor) VALUES (4, '0645374564', 001, 'Cash Investment', 'Business Startup','annual salary savings',34567.47, 4, 0.25, '2022-12-02', 003);
insert into Investments(portfolio_id, telephone, investment_type_id, investment_details, reason_for_investment,  source_of_deposit, principal, transaction_id, rate, maturity_date, risk_factor) VALUES (4, '0645374564', 001, 'Cash Investment', 'Business Startup', 'family & friends contribution',10000.00, 10, 0.25, '2022-12-03', 003);

insert into Investments(portfolio_id, telephone, investment_type_id, investment_details, reason_for_investment,  source_of_deposit, principal, transaction_id, rate, maturity_date, risk_factor) VALUES (5, '0564739285', 004, 'MTN Ghana Shares', 'Personal Health Insurance', 'one month salary savings',5567.51, 5, 0.45, '2022-11-02', 001);
insert into Investments(portfolio_id, telephone, investment_type_id, investment_details, reason_for_investment,  source_of_deposit, principal, transaction_id, rate, maturity_date, risk_factor) VALUES (5, '0564739285', 004, 'Ecobank Ghana Shares', 'Personal Health Insurance', 'one month salary savings',4000.00, 11, 0.45, '2022-12-05', 001);

insert into Investments(portfolio_id, telephone, investment_type_id, investment_details, reason_for_investment,  source_of_deposit, principal, transaction_id, rate, maturity_date, risk_factor) VALUES (6, '0334445532', 005, 'Devtraco Real Estate', 'Personal Wealth', 'one month salary savings', 10567.50, 6, 0.65, '2022-10-25', 001);
insert into Investments(portfolio_id, telephone, investment_type_id, investment_details, reason_for_investment,  source_of_deposit, principal, transaction_id, rate, maturity_date, risk_factor) VALUES (6, '0334445532', 005, 'Trassaco Real Estate', 'Personal Wealth', 'one month salary savings',17607.50, 12, 0.65, '2023-01-01', 001);

-- 13 --
insert into Investments(portfolio_id, telephone, investment_type_id, investment_details, reason_for_investment,  source_of_deposit, principal, transaction_id, rate, maturity_date, risk_factor) VALUES (7, '0987654321', 005, 'Villagio Apartments', 'Personal Wealth', 'five month salary savings',20500.50, 13, 0.59, '2022-10-25', 004);
insert into Investments(portfolio_id, telephone, investment_type_id, investment_details, reason_for_investment,  source_of_deposit, principal, transaction_id, rate, maturity_date, risk_factor) VALUES (7, '0987654321', 006, 'RoundTable Hedge Fund', 'Personal Wealth', 'five month salary savings',25700.50, 16, 0.59, '2023-01-01', 004);


insert into Investments(portfolio_id, telephone, investment_type_id, investment_details, reason_for_investment,  source_of_deposit, principal, transaction_id, rate, maturity_date, risk_factor) VALUES (8, '0989876787', 001, 'Government Bond', 'Kids College Savings', 'annual salary savings',14040.50, 14, 0.23, '2023-01-01', 001);
insert into Investments(portfolio_id, telephone, investment_type_id, investment_details, reason_for_investment,  source_of_deposit, principal, transaction_id, rate, maturity_date, risk_factor) VALUES (8, '0989876787', 001, 'Treasury Bill', 'Kids College Savings', 'annual salary savings',15000.50, 17, 0.21, '2023-08-01', 001);


insert into Investments(portfolio_id, telephone, investment_type_id, investment_details, reason_for_investment,  source_of_deposit, principal, transaction_id, rate, maturity_date, risk_factor) VALUES (9, '0987980676', 003, 'SSNIT Fund', 'Student Savings', 'personal savings',3032.50, 18, 0.21, '2021-12-25', 002);
insert into Investments(portfolio_id, telephone, investment_type_id, investment_details, reason_for_investment,  source_of_deposit, principal, transaction_id, rate, maturity_date, risk_factor) VALUES (9, '0987980676', 003, 'Teacher`s Fund', 'Student Savings', 'personal savings',3000.50, 19, 0.20, '2022-09-01', 002);


insert into Investments(portfolio_id, telephone, investment_type_id, investment_details, reason_for_investment,  source_of_deposit, principal, transaction_id, rate, maturity_date, risk_factor) VALUES (10, '0954556655', 003, 'State Teaching Hospital Shares', 'Pension Savings', 'salary and personal savings',1000.50, 20, 0.20, '2021-12-25', 002);
insert into Investments(portfolio_id, telephone, investment_type_id, investment_details, reason_for_investment,  source_of_deposit, principal, transaction_id, rate, maturity_date, risk_factor) VALUES (10, '0954556655', 003, 'State Teaching Hospital Shares', 'Pension Savings', 'salary and personal savings',1000.50, 15, 0.20, '2022-09-01', 002);


create index All_Private_Clients
on Private_Clients(first_name, last_name);

create index All_Interests
on Investments(telephone, principal, rate);

create index All_Investments
on Investments(telephone, investment_details);

create index All_Transactions
on Transactions(client_id, transaction_type_id);




-- view all mature investments with interests to be credited into client accounts--
select concat(Private_Clients.first_name, ' ', Private_Clients.last_name) as Client, Investments.investment_details as Investment, Investments.principal as Principal, (Investments.principal * Investments.rate) as Interest, (Investments.principal + (Investments.principal * Investments.rate)) as Amount
from Private_Clients use index (All_Private_Clients)
    inner join Investments
        on Private_Clients.telephone = Investments.telephone
where maturity_date < curdate();





-- view most used investment type for developing future investment strategies for clients --
select investment_type_name, COUNT(*)
from Investement_Type
    right outer join Investments use index (All_Investments)
        on Investement_Type.investment_type_id = Investments.investment_type_id
group by investment_type_name;





-- number of assets managed for all clients and total value of investments under management --
select concat(first_name, ' ', last_name) as Client, number_of_investments, total_assets, projected_portfolio_growth,projected_percentage_growth, total_assets + projected_portfolio_growth as projected_value
from Private_Clients
         inner join
    (select telephone, count(*) as number_of_investments,sum(principal) as total_assets, round(sum((principal * Investments.rate)), 3) as projected_portfolio_growth, ((sum((principal * Investments.rate)) / sum(principal)) * 100) as projected_percentage_growth
      from Investments
      group by telephone) A
        on Private_Clients.telephone = A.telephone
group by concat(first_name, ' ', last_name), number_of_investments, total_assets, projected_portfolio_growth,
         projected_percentage_growth, projected_value
order by total_assets DESC;





-- view all assets (and their details) in a client's portfolio --
select investment_id,reason_for_investment,source_of_deposit,risk_level,principal,projected_growth,projected_percentage_growth,projected_value
from Private_Clients
         inner join
     (select investment_id,telephone,reason_for_investment,source_of_deposit,risk_factor as risk_level,principal,projected_growth,projected_percentage_growth,projected_value
      from Risk_Factor
               inner join
           (select investment_id, telephone,reason_for_investment,source_of_deposit,risk_factor as risk_level,principal,(principal * Investments.rate) as projected_growth,((principal * Investments.rate) / Investments.principal) * 100 as projected_percentage_growth,principal + (principal * Investments.rate)as projected_value
            from Investments) A
           on risk_factor_id = risk_level) B
     on B.telephone = Private_Clients.telephone
where concat(first_name, ' ', last_name) in ('Patience Parker')
order by principal desc;




-- view all transactions made by a particular client so that a transactional statement can be issued --
select transaction_type_name as transaction, amount, transaction_date
from Private_Clients use index (All_Private_Clients)
         inner join
     (select transaction_type_name, client_id, A.transaction_type_id, amount, transaction_date
      from Transaction_Type
               inner join
           (select client_id, transaction_type_id, amount, transaction_date
            from Transactions use index (All_Transactions)) A
           on A.transaction_type_id = Transaction_Type.transaction_type_id) B
     on client_id = Private_Clients.telephone
where concat(first_name, ' ', last_name) in ('Daniel Nkansah')
group by transaction_type_name, amount, transaction_date
order by transaction_date DESC;




-- view clients most profitable investments--
select concat(first_name, ' ', last_name) as client_name, B.telephone, max_principal, max_projected_value
from Private_Clients
inner join
(select A.telephone, max_principal, max_projected_value from Investments
inner join
(select Investments.telephone, max(principal) as max_principal, max(principal+(principal*Investments.rate)) as max_projected_value from Investments
group by telephone) A
on A.telephone = Investments.telephone
group by A.telephone, max_principal, max_projected_value) B
on B.telephone = Private_Clients.telephone
group by client_name, B.telephone, max_principal, max_projected_value
;


























# select  institution_name as Client, Accounts.telephone, balance, AUM from Accounts
# inner join Institutional_Clients C
# on Accounts.telephone = C.telephone
# where institution_name in ('Aoun-Hammond Law');



# -- view a  clients account balance
# select concat(first_name, ' ', last_name) as Client, Accounts.telephone, balance, AUM from Accounts
# inner join Private_Clients C
# on Accounts.telephone = C.telephone
# where concat(first_name, ' ', last_name) in ('Edgar Cook');










# insert into Transactions(client_id, account_id, transaction_type_id, amount, transaction_date) values('0954556655', 10, 001, 700.50, '2022-11-25');
#
#
# -- update client account balance after transaction --
# update Accounts
# inner join Clients C on Accounts.telephone = C.telephone
# set balance = balance - 700.50, AUM = AUM - 700.5
# where concat(first_name, ' ', last_name) = 'Afful Mens';
#
# select concat(first_name, ' ', last_name) as Client, Accounts.telephone, balance, AUM from Accounts
# inner join Clients C
# on Accounts.telephone = C.telephone
# where concat(first_name, ' ', last_name) = 'Afful Mens';


