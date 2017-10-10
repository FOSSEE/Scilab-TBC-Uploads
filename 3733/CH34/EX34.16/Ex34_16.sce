// Example 34_16
clc;funcprot(0);
//Given data
CC_kw=15000;// Capital cost/kW installed
TP=2200;// Total power of the diesel power plant in kW
AOC=600000;//Annual operating costs in rupees
FC=100000;// Fixed cost in rupees
VC=200000;// Variable cost in rupees
AMC=FC+VC;// Annual maintainence costs in rupees
Cf=0.8;// Cost of fuel per kg in rupees
Clo=40;// Cost of lubricating oil per kg in rupees
CV=40000;// kJ/kg
cf=0.5;// Consumption of fuel in kg/kWh
clo=1/400;// Consumption of lubricant oil in kg/kWh
MD=1600;// Maximum demand in kW
F_l=45/100;//Load factor 

//Calculation
CC=ceil (TP*CC_kw);// Capital costof the plant in rupees/ year;
I=ceil(CC*(15/100));// Interest on capital 
AE=ceil(MD*F_l*8760);// Annual energy generated in kWh/year
F_c=ceil(cf*AE);// kg/year
Fc=ceil(F_c*Cf);// Cost of fuel in rupees per year
Lc=ceil(clo*AE);// Lubrication consumption in kg /year
CLO=ceil(Clo*Lc);//Cost of lubricant oil Rs/year
TFC=ceil(I+FC);// Total fixed cost in kg/year
TRC=ceil(Fc+Lc+VC+AOC);// Total running cost in Rs/year
Tc=ceil(TFC+TRC);// Total cost in Rs/year
Gc=(Tc/AE);// Generation cost in Rs/kWh.
printf('\nThe annual energy generated=%0.1e kWh/year \nThe cost of generation=Rs.%0.2f/kWh',AE,Gc);
// The answer provided in the textbook is wrong

