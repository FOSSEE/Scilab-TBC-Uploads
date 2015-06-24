clear;
clc;

// Stoichiometry
// Chapter 4
// Material Balances involving Chemical Reaction


// Example 4.5
// Page 121
printf("Example 4.5, Page 121 \n \n");

// solution

m=100 //[kmol] (basis) dry mixed gas
// x = kmol of water gas
// y =kmol of producer gas
// overall material balance : 
// x+y = 100   (i)

//r2 =.43x+.25y // H2 formed by shift rxn
//r2=.51x+.25y // H2 entering with water and producer gas
//r = r1+r2 // taoal H2 
///n =.02x+.63y // N2 entering
//N2:H2=1:3
// ==> x-1.807y = 0(ii)
//solving (i) and (ii)
A = [1 1;1 -1.807]
d = [100;0]
x = A\d
s = .43*x(1)+.25*x(2) // steam req.
printf("x = "+string(x(1))+" and y = "+string(x(2))+"\nAmount of steam required = "+string(s)+" kmol")
