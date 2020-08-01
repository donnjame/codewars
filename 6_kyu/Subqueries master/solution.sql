The objective of this Kata is to show that you are proficient at string manipulation (and perhaps that you can use extensively subqueries).

SELECT CASE WHEN split_part(name,' ',4) = '' THEN split_part(name,' ',1)
            WHEN split_part(name,' ',4) !='' THEN CONCAT(split_part(name,' ',1),' ',split_part(name,' ',2))  
        END AS name,
        CASE WHEN split_part(name,' ',4) ='' THEN split_part(name,' ',2)
            WHEN split_part(name,' ',4) !='' THEN split_part(name,' ',3) 
        END AS first_lastname,
        CASE WHEN split_part(name,' ',4) ='' THEN split_part(name,' ',3)
            WHEN split_part(name,' ',4) !='' THEN split_part(name,' ',4) 
        END AS second_lastname
FROM people;
