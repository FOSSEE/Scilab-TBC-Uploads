// Scilab code Exa12.2 : : Page-573 (2011)
clc; clear; 
A_Be = 9;        // Mass number of beryllium
A_U = 238;        // Mass number of uranium
E_los_Be = (1-((A_Be-1)^2/(A_Be+1)^2))*100;    // Energy loss for beryllium
E_los_U = round((1-((A_U-1)^2/(A_U+1)^2))*100);    // Energy loss for uranium
printf("\nThe energy loss for beryllium is = %d percent \nThe energy loss for uranium is = %d percent", E_los_Be, E_los_U);

// Check for greater energy loss !!!!
if E_los_Be >= E_los_U then
    printf("\nThe energy loss is greater for beryllium");
else
    printf("\nThe energy loss is greater for uranium");
end

// Result
// The energy loss for beryllium is = 36 percent 
// The energy loss for uranium is = 2 percent
// The energy loss is greater for beryllium 
 