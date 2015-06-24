// Scilab code Exa1.6.2 : Total angular momentum of proton : Page 40  (2011)
// Get the l value from the user
l = 3;    // Orbital qunatum number for f-state proton
s = 1/2;    // Magnitude of spin quantum number
// Display the value of j within the for loop
disp("The j values will be between");
for i = abs(l-s):1:abs(l+s)        // l-s Coupling 
    printf("\t %3.1f",i);
end

// Result
// The j values will be between   
//  2.5     3.5 
