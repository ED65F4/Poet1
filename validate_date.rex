/* REXX function to check if a date in the format "YYYYMMDD" is valid */
parse arg date  /* accept a parameter of the date in the format "YYYYMMDD" */
year = substr(date, 1, 4) /* extract the year from the date */
month = substr(date, 5, 2) /* extract the month from the date */
day = substr(date, 7, 2) /* extract the day from the date */

/* check if the year is a valid 4-digit number */
if \year < 1000 | \year > 9999 then return "False"

/* check if the month is a valid number between 1 and 12 */
if \month < 1 | \month > 12 then return "False"

/* check if the day is a valid number for the given month */
if \day < 1 | \day > days(month, year) then return "False"

/* if all checks pass, return "True" */
return "True"
