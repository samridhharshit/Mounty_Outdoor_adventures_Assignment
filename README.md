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