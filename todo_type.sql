CREATE TABLE todo.type (
  type_id INT NOT NULL,
  description VARCHAR(50) NOT NULL,
  created_by VARCHAR(50) NOT NULL,
  created_date DATETIME NOT NULL,
  PRIMARY KEY (type_id)
)
ENGINE = INNODB,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_0900_ai_ci;