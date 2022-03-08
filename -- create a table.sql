
CREATE TABLE studentsinfo (
  id INTEGER PRIMARY KEY,

  Fname TEXT NOT NULL,

  Sname TEXT NOT NULL,

  Dep TEXT,
  project TEXT,

  adress TEXT,

  DOB DATE,

  gender TEXT NOT NULL
);

INSERT INTO studentsinfo VALUES (1,"sanjay","mehra","hr","p1","hyderabad",'01/12/1976',"M");

INSERT INTO studentsinfo VALUES (2,"ananya","mishra","admin","p2","delhi",'02/05/1968',"F");

INSERT INTO studentsinfo VALUES (3,"rohan","diwan","account","p3","mumbai",'01/01/1980',"M");

INSERT INTO studentsinfo VALUES (4,"sonia","kulkarni","hr","p1","hyderabad",'02/05/1992',"F");

INSERT INTO studentsinfo VALUES (5,"ankit","kapoor","admin","p2","delhi",'03/07/1994',"M");

SELECT * FROM studentsinfo ;

CREATE TABLE studentsposition 
(
  id INTEGER PRIMARY KEY,

  eposition TEXT NOT NULL,

  doj DATE NOT NULL,

  salary INTEGER
);
INSERT INTO studentsposition VALUES (1,"manager",'01/05/2022',500000);

INSERT INTO studentsposition VALUES (2,"executive",'02/05/2022',75000);

INSERT INTO studentsposition VALUES (3,"manager",'01/05/2022',90000);

INSERT INTO studentsposition VALUES (4,"lead",'02/05/2022',85000);

INSERT INTO studentsposition VALUES (5,"executive",'01/05/2022',300000);

SELECT * FROM studentsposition ;

SELECT count(id) FROM studentsinfo where dep="admin" ;

SELECT substr(Sname,1,4) FROM studentsinfo ;

SELECT * FROM studentsposition where salary BETWEEN 50000 AND 100000 ;

SELECT * FROM studentsinfo where Fname LIKE 's%';

SELECT * FROM studentsposition order by salary;

SELECT * FROM studentsinfo WHERE Fname NOT IN ('sanjay','sonia');

SELECT Dep, count(id) AS EmpDeptCount 
FROM studentsinfo GROUP BY Dep 
ORDER BY EmpDeptCount ASC;
