-- Inserção de usuários sem o userId (gerado automaticamente)
INSERT INTO TB_USERS (
    username, email, password, full_name, user_status, user_type, phone_number, cpf, image_url, creation_date, last_update_date
) VALUES
('johndoe', 'johndoe@example.com', 'senhaSegura123', 'John Doe', 'ACTIVE', 'ADMIN', '1234567890', '11122233344', 'https://example.com/images/johndoe.jpg', '2024-01-01T12:00:00Z', '2024-01-01T12:00:00Z'),
('janedoe', 'janedoe@example.com', 'senhaSegura123', 'Jane Doe', 'ACTIVE', 'USER', '0987654321', '22233344455', 'https://example.com/images/janedoe.jpg', '2024-01-02T12:30:00Z', '2024-01-02T12:30:00Z'),
('bobsmith', 'bobsmith@example.com', 'senhaSegura123', 'Bob Smith', 'BLOCKED', 'USER', '5678901234', '33344455566', NULL, '2024-01-03T10:15:00Z', '2024-01-03T10:15:00Z');

-- Inserção de papéis na tabela TB_ROLES
INSERT INTO TB_ROLES (role_name) VALUES
('ROLE_ADMIN'),
('ROLE_USER');

-- Inserção de relacionamentos na tabela TB_USERS_ROLES
INSERT INTO TB_USERS_ROLES (user_id, role_id) VALUES
(1, 1), (2, 2), (3, 2);

INSERT INTO TB_DISTRICT (name) VALUES
('Pampulha'), ('Lourdes'), ('Savassi'), ('Santo Agostinho'), ('Funcionários');

INSERT INTO TB_CITY (name, district_id) VALUES
('Belo Horizonte', 1), ('Contagem', 2), ('Rio de Janeiro', 3), ('Cabo Frio', 4), ('São Paulo', 5);

INSERT INTO TB_ADDRESS (zip_code, street, number, complement, district, state, country, user_id, city_id) VALUES
('12345-678', 'Rua Exemplo 1', '101', 'Apto 202', 'Centro', 'SP', 'Brasil', 1, 1), -- Endereço de John Doe
('98765-432', 'Avenida Exemplo 2', '500', '', 'Bairro Exemplo', 'RJ', 'Brasil', 2, 2), -- Endereço de Jane Doe
('45678-123', 'Rua Exemplo 3', '250', 'Casa', 'Bairro Novo', 'MG', 'Brasil', 3, 1); -- Endereço de Bob Smith


