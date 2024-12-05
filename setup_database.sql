
-- Створення таблиці "Працівник"
CREATE TABLE employee (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    manager_id INTEGER
);

-- Додавання зовнішнього ключа
ALTER TABLE employee
ADD CONSTRAINT fk_manager FOREIGN KEY (manager_id) REFERENCES employee(id);

-- Заповнення таблиці "Працівник"
INSERT INTO employee (name, manager_id) VALUES
('John Doe', NULL),
('Jane Smith', 1),
('Michael Brown', 1),
('Emily Davis', 2),
('Daniel Johnson', 2),
('Sophia Wilson', 3),
('William Jones', 3),
('Charlotte Garcia', NULL),
('James Martinez', 8),
('Olivia Hernandez', 8);

-- Запит для вибору працівників без начальника
SELECT * FROM employee WHERE manager_id IS NULL;
