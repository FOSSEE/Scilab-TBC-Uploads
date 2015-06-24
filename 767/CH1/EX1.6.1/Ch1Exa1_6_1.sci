// Scilab code Exa1.6.1 : Orbital angular momentum of coupled nucleons : Page 39  (2011)
l1 = 1;    // Orbital qunatum number for p-state nucleon
l2 = 2;    // Orbital qunatum number for d-state nucleon
// Display the value of L within the for loop
disp("The possible L values will be");
for i = abs(l1-l2):1:abs(l1+l2)        // Coupling of l-orbitals 
    printf("\t %1d",i);
end

// Result
// The possible L values will be   
//  1     2     3 