clc
Tb = 353 // boiling point of benzene in K
T = 303 // Operational temperature in K
R = 8.3143 //Gas constant
P = 101.325*exp((88/R)*(1-(Tb/T)))

printf("\n Example 11.3")
printf("\n Vapour pressure of benzene is %f kPa",P)
//The answers vary due to round off error

