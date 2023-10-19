-- Editar o campo e-mail do cliente com nome Carolina, onde devemos 
-- trocar de “carol@ig.com.br” para “carolina@campuscode.com.br”.
UPDATE CUSTOMERS SET EMAIL = 'carolina@campuscode.com.br' WHERE ID = 9;

-- Editar a data de nascimento do cliente com nome Josefa para “1986-06-19”.
UPDATE CUSTOMERS SET BIRTH_DATE = '1986-06-19' WHERE ID = 4;