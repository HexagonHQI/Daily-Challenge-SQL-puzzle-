--Q1. What will be the OUTPUT of the following statement?

    --SELECT COUNT(*) 
    --FROM FirstTab AS ft WHERE ft.id NOT IN ( SELECT id FROM SecondTab WHERE id IS NULL )
		answer is 4 = because The key point is how NULL behaves in the NOT IN comparison. Since it's not a valid integer for comparison, it acts as a separate value.


--Q2. What will be the OUTPUT of the following statement?

    --SELECT COUNT(*) 
    --FROM FirstTab AS ft WHERE ft.id NOT IN ( SELECT id FROM SecondTab WHERE id = 5 )
      Answer = 3 because The subquery in Q2 specifically filters for id = 5 in SecondTab.
                         This excludes only the row with id = 5 in FirstTab, resulting in a count of 3.

--Q3. What will be the OUTPUT of the following statement?

    --SELECT COUNT(*) 
    --FROM FirstTab AS ft WHERE ft.id NOT IN ( SELECT id FROM SecondTab )
     Answer = 4 Because The key point is how NULL behaves in the NOT IN comparison. Since it's not a valid integer for comparison, it acts as a separate value.

--Q4. What will be the OUTPUT of the following statement?

    --SELECT COUNT(*) 
    --FROM FirstTab AS ft WHERE ft.id NOT IN ( SELECT id FROM SecondTab WHERE id IS NOT NULL )
			Answer= 1 because 
            --The subquery in Q4 excludes rows with non-NULL values (id = 5) from SecondTab.
            --Only the row with NULL id in FirstTab remains because NULL isn't compared to the non-NULL value (5).