// Example 34_20
clc;funcprot(0);
//Given data
P=120;// Plant capacity in MW
CC=15000;// The Capital cost in Rs/kW
Arc=20*10^6;// Annual running charges in rupees
F_al=0.6;// The annual load factor
F_ac=0.5;// Annual capacity factor

//Calculation
MD=(P*F_ac)/F_al;// Maximum demand in MW
Rc=P-MD;// Reserve capacity in MW
L_a=F_al*MD;// Average load in MW
E_py=L_a*10^3*8760;//Energy produced/year in kWh
E_a=E_py*0.95;// kWh
TCC=CC*P*10^3;// Total capital cost of the plant in rupees
ID=.10*TCC;// Interest and decpreciation in rupees
p=.10*TCC;// Profit to be gained in rupees
TC=ID+p+Arc;// Total charges to be recovered in rupees
C_eg=(TC/E_a);// Cost of energy generated in Rs./kWh
printf('\n(a)The reserve capacity=%0.0f MW \n(b)Cost of energy generated=Rs.%0.2f/kWh',Rc,C_eg);
