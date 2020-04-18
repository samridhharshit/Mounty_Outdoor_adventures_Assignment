// importing db
const con = require('../Database/db');

const DeleteReservation = (req, res) => {
    const reservationId = JSON.parse(req.params.reservationId);
    // console.log(body);
    con.query(`delete from reservation_details where id = ?`,
        [reservationId],
        (err, result) => {
            if (err) res.status(403).json(err);
            res.status(200).json(result)
        })
};

module.exports = DeleteReservation;