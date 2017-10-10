// Example 12_10
clc;funcprot(0);
// Given data
T_DB=50.0+273.15;// K
T_ref=0+273.15;// K
phi=40.0/100;// The relative humidity
p_m=0.101;// MPa
c_p=1.004;// kJ/(kg.K)

// Calculation
h_a=c_p*(T_DB-T_ref);// kJ/(kg dry air) 
// From Table C.1b,
p_sat=0.01235;// MPa
w=0.622*((phi*p_sat)/(p_m-(phi*p_sat)));// kg watervapor/kg dry air
p_w=phi*p_sat;// MPa
h_w=2593.6;// kJ/kg water vapor
h=h_a+(w*h_w);// kJ/kg dry air
printf("\nThe value of h#=%3.0f kJ/kg dry air",h);
