// Example 34_21
clc;funcprot(0);
//Given data
P=142.5;// Plant capacity in MW
CC=130*10^7;// The Capital cost in rupees
Ac_o=18.8*10^7;// Annual cost of coal,oil,tax and salaries in rupees
R_i=5;// Rate of interest in % of capital
R_d=5;// Rate of depreciation in % of capital
U_e=6;// Unit of energy used in % of the total units supplied
F_l=0.6;// The annual load factor
F_c=0.5;// Annual capacity factor

//Calculation
MD=(P*F_c)/F_l;// Maximum demand in MW
Rc=P-MD;// Reserve capacity in MW
E_s=MD*10^3*F_l*8760;// Yearly energy supplied by the plant in kWh
E_g=(1+(U_e/100))*E_s;// Yearly energy generated in kWh
ID=((R_i+R_d)/100)*CC;//Interest and decpreciation in Rs./year
TC=(ID+Ac_o);// Total cost in Rs./year
Oc=(TC/E_g);// Overall cost of generation in Rs./kWh
printf('\nReserve capacity=%0.2f MW \nOverall cost of generation=Rs.%0.3f/kWh',Rc,Oc);
// The answer provided in the textbook is wrong
