clear;
//clc();

// Example 5.5
// Page: 94
printf("Example-5.5  Page no.-94\n\n");

//***Data***//
//From Antoine equation we have 
// log(p) = A-B/(T+C)
//Solving above equation for T, we have
// T = B/(A-log(p))-C
//Inserting the values of the constants for the water which are reported in the given book in the table A.2 (page 419),
// and the value of 1.00 atm expressed in torr, we find that 

A=7.96681;
B=1668.21;
C=228.0;
p=760;//[torr]

//Thus
T=B/(A-log10(p))-C;

printf("NBP of water using antoine equation and table A.2 is %f C",T);

//This does not prove the overall accuracy of the Antoine equation, but does show that whoever fitted the constants to the experimental data for water made them represent the NBP (100C) very well.  