SELECT
        a.surr_key,
        a.Date,
        a.Opponent,
        r.Result,
        r.Runs_Scored,
        r.Runs_Against,
        a.Attendance,
        a.Capacity,
        a.Percent_Attendance,
        w.Avg_Temp_F,
        w.Low_Temp_F,
        w.High_Temp_F
    FROM [dbo].[dim_attendance] as a
    INNER JOIN [dbo].[dim_results] as r
    ON a.surr_key = r.surr_key
    INNER JOIN [dbo].[dim_weather] as w
    ON a.Date = w.Date
    ORDER BY a.surr_key;