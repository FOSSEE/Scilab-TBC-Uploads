// Scilab code Exa7.10: : Page-296 (2011)
clc; clear;
l = 2,3,4
printf("\nThe possible multipolarities are ")
for l = 2:4
    if l == 2 then
        printf("E%d,", l);
        elseif l == 3 then
        printf(" M%d", l);
        elseif l == 4 then
        printf(" and E%d", l);
    end
end
for l = 2:4
    if l == 2 then 
     printf("\nThe transition E%d dominates",l);
    end
end

// Result
// The possible multipolarities are E2, M3 and E4
// The transition E2 dominates 


