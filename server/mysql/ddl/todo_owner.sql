CREATE TABLE todo.item (
  item_id INT NOT NULL,
  owner_id INT NOT NULL,
  type_id INT NOT NULL,
  description VARCHAR(2048) NOT NULL,
  created_by VARCHAR(50) NOT NULL,
  created_date DATETIME NOT NULL,
  PRIMARY KEY (item_id)
)
ENGINE = INNODB,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_0900_ai_ci;

ALTER TABLE todo.item 
  ADD CONSTRAINT FK_item_owner_id FOREIGN KEY (owner_id)
    REFERENCES todo.owner(owner_id);

ALTER TABLE todo.item 
  ADD CONSTRAINT FK_item_type_id FOREIGN KEY (type_id)
    REFERENCES todo.type(type_id);