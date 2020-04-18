# Hotel Management

## Synopsis

The application enables the user to make CRUD requests to the application facilitating CREATE, READ, UPDATE
 and DELETE requests respectively.
 
 The web-app runs on Node js backend with mySQL Database and uses Rest API for maing various requests.
 
 ## API Contracts
 
### ***POST /make_reservation***

Generates a reservation for a user

- ***URL params***
    
    `NONE`
    
- ***Headers*** 
 
     `Content-Type: application/json`
  
 - ***Data Params***
  
  ```
  {
       id: int,
       FName: text,
       LName: text,
       Email: varchar,
       National: varchar,
       Phone: bigint,
       Bed: varchar,
       NRoom: varchar,
       Meal: bool,
       cin: date,
       cout: date,
       nodays: int
  }
  ```
  
 - ***Content***
    
    Input:
 
    ```
    {
        "FName": "Priyansu",
        "LName": "Pulak",
        "Email": "priyansupulak@gmail.com",
        "National": "Indian",
        "Phone": 9431649216,
        "Bed": "Single Room",
        "NRoom": "1",
        "Meal": 1,
        "cin": "2020-04-15",
        "cout": "2020-04-16",
        "nodays": 1
    }
    ```
   
   Output:
   
   ```
   {
       "fieldCount": 0,
       "affectedRows": 1,
       "insertId": 2,
       "serverStatus": 2,
       "warningCount": 0,
       "message": "",
       "protocol41": true,
       "changedRows": 0
   }
   ```

### ***GET /showAllRooms***

Fetches all details related to various rooms in the Hotel

- ***URL params***
    
    `NONE`
    
- ***Headers*** 
 
     `Content-Type: application/json`
  
 - ***Data Params***
  
  ```
  {
     id: int,
     type: varchar,
     bedding: varchar
  }
  ```
  
 - ***Content***
    
    Input:
    
    `NONE`
   
   Output:
   
   ```
   [
       {
           "id": 1,
           "type": "Superior Room",
           "bedding": "Single"
       },
       {
           "id": 2,
           "type": "Superior Room",
           "bedding": "Double"
       },
       {
           "id": 3,
           "type": "Superior Room",
           "bedding": "Triple"
       },
       {
           "id": 4,
           "type": "Single Room",
           "bedding": "Quad"
       },
       {
           "id": 5,
           "type": "Superior Room",
           "bedding": "Quad"
       },
       {
           "id": 6,
           "type": "Deluxe Room",
           "bedding": "Single"
       },
       {
           "id": 7,
           "type": "Deluxe Room",
           "bedding": "Double"
       },
       {
           "id": 8,
           "type": "Deluxe Room",
           "bedding": "Triple"
       },
       {
           "id": 9,
           "type": "Deluxe Room",
           "bedding": "Quad"
       },
       {
           "id": 10,
           "type": "Guest House",
           "bedding": "Single"
       },
       {
           "id": 11,
           "type": "Guest House",
           "bedding": "Double"
       },
       {
           "id": 12,
           "type": "Guest House",
           "bedding": "Quad"
       },
       {
           "id": 13,
           "type": "Single Room",
           "bedding": "Single"
       },
       {
           "id": 14,
           "type": "Single Room",
           "bedding": "Double"
       },
       {
           "id": 15,
           "type": "Single Room",
           "bedding": "Triple"
       }
   ]
   ```

### ***PUT /updateReservationDetails/:reservationId***

Updates data for a reservation with the help of reservation id

- ***URL params***
    
    `reservationId`
    
- ***Headers*** 
 
     `Content-Type: application/json`
  
 - ***Data Params***
  
  ```
  {
      id: int,
      FName: text,
      LName: text,
      Email: varchar,
      National: varchar,
      Phone: bigint,
      Bed: varchar,
      NRoom: varchar,
      Meal: bool,
      cin: date,
      cout: date,
      nodays: int
  }
  ```
  
 - ***Content***
    
    Input:
 
    ```
   {
        "FName": "Priyansu",
        "LName": "Pulak",
        "Email": "priyansu.pulak@gmail.com",
        "National": "Indian",
        "Phone": 1234657890,
        "Bed": "Single Room",
        "NRoom": "1",
        "Meal": 1,
        "cin": "2020-04-15",
        "cout": "2020-04-17",
        "nodays": 2
   }
    ```
   
   Output:
   
   ```
   {
       "fieldCount": 0,
       "affectedRows": 1,
       "insertId": 0,
       "serverStatus": 2,
       "warningCount": 0,
       "message": "(Rows matched: 1  Changed: 1  Warnings: 0",
       "protocol41": true,
       "changedRows": 1
   }
   ```

### ***DELETE /deleteReservation/:reservationId***

Deletes a reservation with the help of reservation id

- ***URL params***
    
    `reservationId`
    
- ***Headers*** 
 
     `Content-Type: application/json`
  
 - ***Data Params***
 
    `NONE`
  
 - ***Content***
    
    Input:
    
    `NONE`
   
   Output:
   
   ```
   {
       "fieldCount": 0,
       "affectedRows": 1,
       "insertId": 0,
       "serverStatus": 2,
       "warningCount": 0,
       "message": "",
       "protocol41": true,
       "changedRows": 0
   }
   ```
   
 ## Dependencies Used
 
 - express
 - mysql
 - nodemon
 - body-parser
 