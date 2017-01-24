SELECT 
    *
    FROM rooms 
    LEFT JOIN reservations ON rooms.id = reservations.room_id
    WHERE reservations.checkin > "2017-01-05" OR reservations.checkout <  "2017-01-07" OR
    reservations.checkin is null OR reservations.checkout is null AND rooms.max_occupancy > 2;
    
    SELECT 
    ro.id as `Room_ID`,
    re.checkin as `CheckIn`,
    re.checkout as `CheckOut`,
    ro.max_occupancy
    FROM 
    rooms as ro
    LEFT JOIN 
    reservations as re
    ON
    ro.id = re.room_id
    WHERE
    
    (
    "2017-01-05" not between re.checkin and re.checkout
    AND
    "2017-01-08" not between re.checkin and re.checkout
    )
    AND 
    ro.max_occupancy > 3
    
    OR 
    re.checkin is NULL;