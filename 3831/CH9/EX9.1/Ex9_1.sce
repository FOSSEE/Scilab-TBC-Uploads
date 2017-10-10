// Example 9_1
clc;funcprot(0);
// Given data
T_1=15+273.15;// K
T_2=50+273.15;// K
Q=0.100;// The electrical energy in W
c=4.186;// kJ/kg.K
T_b=20+273.15;// K

// Calculation
m=Q/(c*(T_2-T_1));// The expected water flow rate in kg/s
// Assume ds=s_out-s_in
ds=c*log(T_2/T_1);// kJ/kg.K
S_p=(m*ds)-(Q/T_b);// kJ/s.K
printf("\nThe entropy production rate,S_p=%1.2e kJ/s.K ",S_p);
if(S_p<0)
              printf("\nSince the entropy production rate is negative, this water heater cannot possibly meet the claims of the inventor, so we should reject the patent application.")
              end
