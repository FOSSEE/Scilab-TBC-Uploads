// Example 32_14
clc;funcprot(0);
//Given data
F_l=0.6;// Load factor
F_c=0.4;// Capacity factor
F_u=0.45;// Use factor
MD=20;// Maximum demand in MW

// Calculation
//(a)
L_a=(MD*F_l)*10^3;// Average load in kW
E=L_a*365*24;// Annual energy produced in kWh
//(b)
Pc=(L_a/1000)/F_c;// Plant capacity in MW
Rc=Pc-MD;// Reserve capacity in MW
//(c)
t=(8760*(F_c/F_u));// hours
T=8760-t;// Number of hours during which plant remains in operation during the year
printf('\n(a)Annual energy production=%0.4e kW-hrs \n(b)Reserve capacity over and above peak load=%0.0f MW \n(c)Number of hours during which plant remains in operation during the year=%0.0f hours',E,Rc,T);
