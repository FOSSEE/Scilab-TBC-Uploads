// Scilab code Exa8.9 : : Page-351 (2011)
clc; clear;
printf("\nThe possible states are : ");
// For s = 0
s = 0;            // Spin angular momentum
m = 2*s+1;        // Spin multiplicity
for j = 0:2       // Total angular momentum
    l = j
    if l == 0 then
       printf("\n     %dS%d, ", j,m); 
        elseif l == 2 then
       printf(" %dD%d, ", j,m); 
    end
end
// For s = 1
s = 1;
m = 2*s+1;
 l = 2
for j = 0:2   
    if j == 0 then
       printf(" %dP%d, ", j,m); 
       elseif j ==1 then
       printf(" %dP%d, ", j,m);
        elseif j ==2 then
       printf("%dP%d and ", j,m); 
    end
end
for j = 2
    printf(" %dF%d", j,m)
end

// Result
// Possible states are : 
// The possible states are : 
//     0S1,  2D1,  0P3,  1P3, 2P3 and  2F3 
