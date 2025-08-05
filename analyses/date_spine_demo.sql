/*
    added to package yml file firstly, then ran 'dbt deps' command to import the package
*/

{{ dbt_utils.date_spine(
    datepart="day",
    start_date="cast('2025-08-01' as date)",
    end_date="cast('2025-08-05' as date)"
   )
}}

/*
    Include the first date, end date is excluded day - 1
*/