// importing db
const con = require('../Database/db');

const showAllRooms = (req, res) => {
    con.query(`select * from room`,
        (err, rows) => {
            if (err) res.status(403).json(err);
            res.status(200).json(rows);
        })
};

module.exports = showAllRooms;