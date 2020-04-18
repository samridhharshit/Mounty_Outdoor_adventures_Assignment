// importing db
const con = require('../Database/db');

const makeReservation = (req, res) => {
    // console.log(req.body);
    con.query(`insert into reservation_details set ?`,
                   [req.body],
                   (err, result) => {
                   if (err) res.status(403).json(err);
                       res.status(200).json(result);
        })

};

module.exports = makeReservation;