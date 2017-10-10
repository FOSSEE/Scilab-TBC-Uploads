// Example 34_24
clc;funcprot(0);
//Given data
P=25;// MW
CC=12000;// Rs/kW
CC_ps=15*10^6;// Capital cost of primary and secondary distribution in rupees
Mc=80*10^4;// Plant maintainence cost in Rs./year
Mc_ps=2*10^6;// Maintainence cost of primary and secondary equipments in Rs./year
Sw=6*10^6;// Salaries and wages in Rs./year
Cc=80*10^3;// Consumption of coal in tonnes/year
cc=800;// Cost of coal Rs./tonne
Di=12*10^6;// Rs./year
E_l=10/100;// Energy loss in transmission 
F_d=1.5;// Diversity factor
F_l=80/100;// Load factor
MD=14;// MW

//Calculation
L_a=MD*10^3*F_l;// kW
E_g=L_a*8760;// kW-hr
CC=P*10^3*CC;// Rs.
IiD=(10/100)*CC;// Interest,insurance,depriciation charges of plant in rupees
IiD_ps=(80/100)*CC;// Interest,insurance,depriciation charges of primary and secondary equipments in rupees
Tfc=IiD+IiD_ps+Di;// Total fixed cost in rupees
MD_i=MD*10^3*F_d;
FC=Tfc/MD_i;// Fixed cost per kW in rupees
Fc=Cc*cc;// Rs./year
Tvc=Mc+Mc_ps+Sw+Fc;// Total variable charges in rupees
E_t=E_g*(1-E_l);// Energy generated in kW-hr
Cec=Tvc/E_t;// Charges for energy consumption in Rs./kW-hr
Tc=Tfc+Tvc;// Total charges in rupees
Ac=Tc/E_t;// Average cost of supply in Rs./kWh
printf('\nAverage cost of supply=Rs.%0.2f/kWh',Ac);
// The answer provided in the textbook is wrong
