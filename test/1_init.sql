-- 1. Create a table
CREATE TABLE IF NOT EXISTS customers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 2. Insert some seed data directly
INSERT INTO customers (name, email) VALUES
    ('Alice Smith', 'alice@example.com'),
    ('Bob Jones', 'bob@example.com')
ON CONFLICT (email) DO NOTHING;

