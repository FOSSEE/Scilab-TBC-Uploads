// Example 34_34
clc;funcprot(0);
//Given data
P=[600 600 600 400];// Capacity of 4-generating sets in kW
MD=1600;// kW
F_l=0.45;// Load factor
CC=10000;// Capital cost in Rs./kW
Mc=60000;// Annual maintainence cost in rupees
Oc=100000;// Operation cost in rupees
Fc=7;// Fuel cost in Rs./kg
Lc=40;// Lubricating oil cost in Rs./kg
F=0.5;// Fuel consumed in kg/kWh
O=0.0025;// Lubricating oil consumed in kg/kWh
CV=42000;// kJ/kg
n_g=0.92;// Generator efficiency

//Calculation
//(a)
R_f3=P(1)/n_g;// Rating of first 3 sets in kW
R_4=P(4)/n_g;// Rating of last set in kW
//(b)
AD=MD*F_l;// Average demand in kW
E_g=AD*8760;// Energy generated/year in kWh
//(c)(i)Fixed costs per year
CC=((3*P(1))+(1*P(4)))*CC;
Afc=.15*CC;// Annual fixed cost in rupees
Tfc=Afc+Mc;// Total fixed cost in rupees
//(i)Variable costs per year
Fc=(E_g*F)*Fc;// Fuel cost in rupees
Lc=(E_g*O)*Lc;// Lubricating oil cost in rupees
Tvc=Fc+Lc+Oc;// Total variable cost in rupees
Tc=Tfc+Tvc;// Total cost in rupees
C=Tc/E_g;// Cost per kWh generated
//(d)
n_o=((E_g*3600)/(E_g*F*CV))*100;// Over all efficiency of the plant in %
printf('\n(a)Rating of first 3 sets=%0.0f kW \n   Rating of last set=%0.0f kW \n(b)Energy generated/year=%0.1e kWh \n(c)Cost of generation=Rs.%0.2f \n(d) Over all efficiency of the plant=%0.2f percentage',R_f3,R_4,E_g,C,n_o);
// The answer vary due to round off error
