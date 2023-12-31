-- Creating the CARS table
CREATE TABLE CARS(
  ID INTEGER PRIMARY KEY AUTOINCREMENT,
  NAME VARCHAR(120) NOT NULL,
  YEAR INTEGER NOT NULL,
  COLOR VARCHAR(32),
  KM FLOAT(10, 2),
  STATUS VARCHAR(17),
  BRAND_ID INTEGER NOT NULL,
  MODEL_ID INTEGER NOT NULL,

  FOREIGN KEY (BRAND_ID) REFERENCES CAR_BRANDS (ID)
  FOREIGN KEY (MODEL_ID) REFERENCES CAR_MODELS (ID)
);