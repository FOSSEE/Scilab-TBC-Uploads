clear;
clc;

// Stoichiometry
// Chapter 3
// Material Balances Without Chemical Reaction


// Example 3.6
// Page 63
printf("Example 3.6, Page 63 \n \n");

// solution

m = 170 //[Nm^3/h] air (basis)
m1 = 50*.99 //[Nm^3/h] N2 content of the stream
m2 = 50*.01 //[Nm^3/h]
N = m*.79-m1 // [Nm^3/h] N2
O = m*.21-m2 // [Nm^3/h] O2
V1 = N*100/(N+O)
V2 = O*100/(N+O)
printf("Vol percent of N2 is "+string(V1)+" and Vol percent of O2 is "+string(V2)+".")
