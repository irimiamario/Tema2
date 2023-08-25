# Tema2

Table Person ( +name: str, +phoneNumber: str, +emailAddress: str, +purchaseParkingPass() ) 
Table Student ( +studentNumber: int, +averageMark: int, +isEligibleToEnroll(str): bool, +getSeminarsTaken(): int )
Table Professor ( /salary: int, #staffNumber: int, -yearsOfService: int, +numberOfClasses: int )
Table Address ( +street: str, +city: str, +state: str, +postalCode: int, +country: str, -validate(): bool, +outputAsLabel(): str )

Table Person has a relationship of 0..1 lives at 1 with Table Address.
Table Student has a relationship of 0..* supervises 1..5 Table Professor.



Create a database containing the tables presented in the above diagram

● Required constraints: (4p)

○ Primary keys mandatory for every table (1p) 

○ Add foreign keys where necessarily (1p)

○ Two compound keys are required (2p)

● Run at least the following queries: (6p)

○ Min. two SELECT queries with WHERE clauses (1p)

○ Min. two INSERT queries on different tables (1p)

○ Min. two UPDATE queries with WHERE clauses (1p)

○ Min. two DELETE query with WHERE clauses (1p)

○ Min. one INNER JOIN (1p)

○ Min. one OUTER JOIN (1p)


● Create the following two files, save them into a ZIP archive, and upload the archive.
● Name the archive as HW-DB_Intro-Vasile_Popescu.zip, where Vasile Popescu is your name.
● File 1: Export the database in a .sql file – all the SQL queries that would replicate an identical database on another station must be included.
● File 2: Write the CRUD & JOIN queries enlisted before in a queries.txt file.
