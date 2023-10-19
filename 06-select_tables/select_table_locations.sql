-- Exibir todas as locações realizadas, assim como também o nome do cliente, do automóvel e do funcionário vinculados em cada locação
SELECT L.ID          AS 'Codigo',
       L.START_DATE  AS 'Data inicial',
       L.END_DATE    AS 'Data final',
       L.TOTAL       AS 'Total',
       C.NAME        AS 'Cliente',
       CARS.NAME     AS 'Carro',
       E.NAME        AS 'Funcionário' FROM LOCATIONS AS L

INNER JOIN CUSTOMERS AS C ON (L.CUSTOMER_ID = C.ID)
INNER JOIN CARS ON (L.CAR_ID = CARS.ID)
INNER JOIN EMPLOYEES AS E ON (L.EMPLOYEE_ID = E.ID);

-- Exibir quantas locações existem na tabela de LOCATIONS
SELECT COUNT(ID) AS 'Quantidade de locações' FROM LOCATIONS;

-- Exibir qual foi a locação com o TOTAL com maior valor.
SELECT L.ID               AS 'Codigo',
       L.START_DATE       AS 'Data inicial',
       L.END_DATE         AS 'Data final',
       MAX(L.TOTAL)       AS 'Maior preço',
       C.NAME             AS 'Cliente',
       CARS.NAME          AS 'Carro',
       E.NAME             AS 'Funcionário' FROM LOCATIONS AS L

INNER JOIN CUSTOMERS AS C ON (L.CUSTOMER_ID = C.ID)
INNER JOIN CARS ON (L.CAR_ID = CARS.ID)
INNER JOIN EMPLOYEES AS E ON (L.EMPLOYEE_ID = E.ID);

-- exibir todas as locações realizadas, entre as datas “2022-05-20” a “2022-12-25”
SELECT L.ID               AS 'Codigo',
       L.START_DATE       AS 'Data inicial',
       L.END_DATE         AS 'Data final',
       L.TOTAL            AS 'Maior preço',
       C.NAME             AS 'Cliente',
       CARS.NAME          AS 'Carro',
       E.NAME             AS 'Funcionário' FROM LOCATIONS AS L

INNER JOIN CUSTOMERS AS C ON (L.CUSTOMER_ID = C.ID)
INNER JOIN CARS ON (L.CAR_ID = CARS.ID)
INNER JOIN EMPLOYEES AS E ON (L.EMPLOYEE_ID = E.ID)

WHERE L.START_DATE BETWEEN '2022-05-20' AND '2022-12-25';