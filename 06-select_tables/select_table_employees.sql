-- Exibir todos os funcionários e seus respectivos cargos
SELECT EMPLOYEES.ID               AS 'Codigo',
       EMPLOYEES.NAME             AS 'Name',
       EMPLOYEES.PHONE_NUMBER     AS 'Telefone',
       EMPLOYEES.CONTRACT_DATE    AS 'Data do contrato',
       POSITIONS.DESCRIPTION      AS 'Cargo' FROM EMPLOYEES

INNER JOIN POSITIONS ON (EMPLOYEES.POSITION_ID = POSITIONS.ID);

-- Exibir somente os funcionários que realizaram mais ou igual a 2 locações.
SELECT EMPLOYEES.ID               AS 'Codigo',
       EMPLOYEES.NAME             AS 'Name',
       EMPLOYEES.PHONE_NUMBER     AS 'Telefone',
       EMPLOYEES.CONTRACT_DATE    AS 'Data do contrato',
       POSITIONS.DESCRIPTION      AS 'Cargo' FROM EMPLOYEES

INNER JOIN POSITIONS ON (EMPLOYEES.POSITION_ID = POSITIONS.ID)
INNER JOIN LOCATIONS ON (LOCATIONS.EMPLOYEE_ID = EMPLOYEES.ID);