// Example 34_15
clc;funcprot(0);
//Given data
CP=120*1000;// Capacity of the plant in kW
Cc=12000;//Capital cost in per kW installed in rupees
Swrm=600000;// Salaries,wages,repairs and maintainence per year in rupees
MD=80;// MW
F_l=40/100;// Load factor
Fc=400;// Fuel cost per tonne in rupees
F_c=1.2;// kg/kW-hr

//Calculation
Ci=CP*Cc;// Capital investment in rupees
ID=(10/100)*Ci;// Interest and Depriciation in rupees
L_a=MD*10^6*F_l;//Average Load in MW
L_a=L_a/1000;// kW
E_t=L_a*8760;// kW-hr
F_c=F_c*E_t;// Fuel consumption in kg
Fc=(Fc/1000)*F_c;// Fuel cost in rupees
TAC=ID+Fc+Swrm;
C_g=TAC/E_t;//The cost of generation in rupees per kWh.
printf('\nThe cost of generation=Rs.%0.3f kWh',C_g);
