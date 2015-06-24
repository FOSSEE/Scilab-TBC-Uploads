
clc;
// Example 1.1
printf('Example 1.1\n\n');
printf(' Page No. 08\n\n');
// Solution 

// Given
m1= 40*10^3;// fuel oil in gallons per year
ga= 4.545*10^-3;// m^3
m= m1*ga;// fuel oil in m^3 per year
Cv1= 175*10^3;// Btu per gallons
Bt= .2321*10^6;// J per m^3
Cv= Cv1*Bt;// in J per year per m^3 
q=m*Cv;// in J per year
printf(' Heat available is %3.2e J per year\n',q)
