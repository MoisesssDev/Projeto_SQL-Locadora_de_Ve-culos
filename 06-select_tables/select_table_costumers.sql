-- Exibir somente o name, lastname e email dos clientes que moram no estado de SP
SELECT NAME     AS 'Nome',
       LASTNAME AS 'Sobrenome',
       EMAIL    AS 'Email' 
FROM CUSTOMERS WHERE STATE = 'SP';

-- Exibir somente os clientes que realizaram mais ou igual a 2 locações.
SELECT CUSTOMERS.ID       AS 'Codigo',
       CUSTOMERS.NAME     AS 'Nome',
       CUSTOMERS.LASTNAME AS 'Sobrenome',
       CUSTOMERS.EMAIL    AS 'Email' FROM CUSTOMERS

INNER JOIN LOCATIONS ON (CUSTOMERS.ID = LOCATIONS.CUSTOMER_ID)
GROUP BY CUSTOMERS.ID
HAVING COUNT(CUSTOMERS.ID) >= 2;