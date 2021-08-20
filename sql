Select *
From startups;
-- total number of compaines in the table
Select Count (*)
From startups;
Select SUM (valuation)
From startups;
--using max
Select Max (raised)
from startups;
Select Max (raised)
from startups
Where stage ='Seed';
-- using min
Select MIN (founded)
from startups;
--valuation among different sectors
Select AVG (valuation)
from startups;
--average valuation in each catergory
Select category, AVG (valuation)
From startups
Group By category;
--return avg valuation in each catergory.Round avg 2 decimals places
Select category, Round (AVG(valuation),2)
From startups
Group By category;

Select category, Round (AVG(valuation),2)
from startups
Group By 1
Order By 2 DESC;
--locating the # of companies belongining to a category
Select category, Count(*)
From startups
Group By category;
--using Having to filter companies with more than 3(categories)
Select category, Count(*)
From startups
Group By category
Having Count(*) > 3;

-- Using Order By
SELECT category, COUNT(*)
FROM startups
GROUP BY category
HAVING COUNT(*) > 3
ORDER BY 2 DESC;

Select location, AVG (employees)
from startups
Group By location;

Select location, AVG (employees)
from startups
Group By location
Having AVG (employees) > 500;



