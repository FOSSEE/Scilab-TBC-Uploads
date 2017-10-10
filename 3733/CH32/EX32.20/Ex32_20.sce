// Example 32_20
clc;funcprot(0);
//Given data
P=500;// MW
F_c=0.45;// Capacity factor
F_l=0.6;// Annual load factor
Cf=1000*10^6;// Cost of fuel used/year in rupees
CC=10000*10^6// Capital cost plant in rupees
ID=15/100;// Interest and depriciation

// Calculation
//(a)
MD=(F_c/F_l)*P;// Maximum demand in MW
Rc=P-MD;// Reserve capacity in MW
//(b)
E=MD*10^3*F_l*8760;// Number of units generated in kW-hrs
Afc=CC*ID;// Annual fixed charges in rupees
Arc=Cf;//  Annualrunning charges in rupees
Tc=Afc+Arc;// Total annual charges in rupees
C=Tc/E;// Cost of generation (Rs./kW-hr) in rupees
printf('\n(a)Minimum reserve capacity of the station=%0.0f MW \n(b)The cost per kWh generated=Rs.%0.2f',Rc,C);
