CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS risk_alerts (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(id),
    risk_level VARCHAR(50),
    alert_message TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW()
);