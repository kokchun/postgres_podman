DROP TABLE IF EXISTS salaries;

CREATE TABLE salaries (
    id SERIAL PRIMARY KEY,
    employee_name VARCHAR(255),
    job_title VARCHAR(255),
    base_pay NUMERIC(12, 2),
    overtime_pay NUMERIC(12, 2),
    other_pay NUMERIC(12, 2),
    benefits NUMERIC(12, 2),
    total_pay NUMERIC(12, 2),
    total_pay_benefits NUMERIC(12, 2),
    year SMALLINT,
    notes TEXT,
    agency VARCHAR(100),
    status VARCHAR(50)
);    


\copy salaries FROM '/imports/Salaries.csv' WITH (FORMAT csv, HEADER true, NULL '', ON_ERROR ignore)

