-- +goose up
CREATE TABLE operations (
    id SERIAL PRIMARY KEY,               -- Уникальный идентификатор операции
    operation_time TIMESTAMP NOT NULL,   -- Время операции
    amount NUMERIC(10, 2) NOT NULL,      -- Стоимость операции (положительная или отрицательная)
    operation_name VARCHAR(255) NOT NULL -- Название операции
);
-- +goose down
DROP TABLE operations;
