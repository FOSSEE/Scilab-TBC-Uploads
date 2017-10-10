// Example 34_31
clc;funcprot(0);
//Given data
P=2500;// kW
MD=1600;// Maximum load in kW
F_l=0.48;// Load factor
CC_s=15000;// Initial cost of 
Ic=18000;// Installation cost in Rs./kW
I=15/100;// Interest on capital
Mc=200000;// Maintainence cost in Rs./year
Tlo=850000;// Total labour and other consumables in Rs./year
Fc=7;// Fuel cost in Rs./kg
Lc=30;// Lubricating oil cost in Rs./kg
F=0.25;// Fuel consumed in kg/kWh
O=0.025;// Oil consumed in kg/kWh

//Calculation
CC=P*Ic;// Capital cost of the plant in rupees
I=CC*I;// Interest on capital in rupees
E_g=MD*F_l*8760;// Energy generated per year in kWh
Cf=F*E_g*Fc;// Cost of fuel in Rs./year
Cl=O*E_g*Lc;// Cost of Lubricating oil in rupees
Tfc=I+Mc;// Total fixed cost in rupees
Trc=Cf+Cl+Tlo;// Total running cost in rupees
Tc=Tfc+Trc;// Total cost in rupees
Gc=Tc/E_g;// Generation cost in Rs./kWh
printf('\nThe cost of generation=Rs.%0.2f/kWh',Gc);
// The answer provided in the textbook is wrong
