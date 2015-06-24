// Scilab Code Ex6.6: Page-348 (2008)
clc; clear;
MAX = 10;
// Look for all the possible set of values for n1, n2 and n3
printf("\nThe most probable distribution is for ");
for i = 0:1:5  
    for j = 0:1:5
        for k = 0:1:5
      // Check for the condition and avoid repetition of set of values
            if ((i + j + k) == 5) & ((j+2*k) == 3) then 
                W = factorial(i + j + k)/(factorial(i)*factorial(j)*factorial(k));
                if W > MAX then
                   printf("\nn1 = %d, n2 = %d and n3 = %d", i, j, k);
                end
            end
        end
    end
end

// Result
// The most probable distribution is for 
// n1 = 3, n2 = 1 and n3 = 1 