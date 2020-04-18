// importing db
const con = require('../Database/db');

const UpdateReservationDetails = (req, res) => {
    const reservationId = JSON.parse(req.params.reservationId);
    const body = req.body;
    // console.log(body);
    con.query(`update reservation_details set ? where id = ?`,
        [body, reservationId],
        (err, result) => {
            if (err) res.status(403).json(err);
            res.status(200).json(result)
        })
};

module.exports = UpdateReservationDetails;