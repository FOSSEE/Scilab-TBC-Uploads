// Scilab code Exa8.8 : : Page-351 (2011)
clc; clear;
S = 1;        // Spin angular momentum(s1+-s2), whereas s1 is the spin of proton and s2 is the spin of neutron.
m = 2*S+1;    // Spin multiplicity
j = 1;        // Total angular momentum
printf("\nThe possible angular momentum states with their parities are as follows : ");
        printf("\n         %dS%d has even parity ", m, j);
        printf("\n         %dP%d has odd parity ", m, j);
        printf("\n         %dD%d has even parity", m, j);   
S = 0;
m = 2*S+1
    printf("\n         %dP%d has odd parity ", m, j);
   
// Result 
// The possible angular momentum states with their parities are as follows : 
//         3S1 has even parity 
//         3P1 has odd parity 
//         3D1 has even parity
//         1P1 has odd parity  