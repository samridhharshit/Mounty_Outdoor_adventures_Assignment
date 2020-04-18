const express = require('express');
const app = express();
const bodyParser = require('body-parser');

const port = 3000;

// setting up engines
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));

// routes

// fetch data of all the rooms available in the hotel
app.get('/showAllRooms', require('./Routes/ShowAllRooms.js'));

// make reservations
app.post('/make_reservation', require('./Routes/MakeReservation'));

// update reservation details
app.put('/updateReservationDetails/:reservationId', require('./Routes/UpdateReservationDetails.js'));

// delete reservation
app.delete('/deleteReservation/:reservationId', require('./Routes/DeleteReservation.js'));


app.listen(port, () => {
    console.log(`listening to port ${port}`);
});