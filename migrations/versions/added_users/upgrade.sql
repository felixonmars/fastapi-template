CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE users (
    identifier UUID DEFAULT uuid_generate_v4(),
    email VARCHAR(256) UNIQUE NOT NULL,
    name VARCHAR(256) NOT NULL,
    admin BOOLEAN DEFAULT False,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (identifier)
);
CREATE INDEX users_email_idx ON users USING btree (email);
CREATE INDEX users_name_idx ON users USING btree (name);
