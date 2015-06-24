clear
clear;
//clc();

// Example 9.11
// Page: 243
printf("Example-9.11  Page no.-243\n\n");

//***Data***//

P = 1;//[atm]
T = 25;//[C]
y_i = 1.00;// amount of the oxygen in the vapour 
// Using the constants for O2 in table A.2 
A = 6.69147;
B = 319.0117;
C = 266.7;
// By Antoine equation 
// log10(P_i) = A-B/(T+C)
P_i = 10^(A-B/(T+C));//[mmHg]
P_i = P_i/760;//[atm]
// This is extrapolated vapour pressure of O2 at 25C
// We will take this value as equal to the Henry's law constant
H_i = P_i;
x_i = y_i*P/H_i;
printf(" Henry''s law constant for O2 is %f atm\n",P_i);
printf(" solubility of O2 is              %e",x_i);