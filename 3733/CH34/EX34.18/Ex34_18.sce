// Example 34_18
clc;funcprot(0);
//Given data
MD=80;// Maximum demand in MW
F_l=35/100;// Load factor
E_s=120*10^6;// Energy supplied by steam plant in kWh/year
MD_s=50;// Maximum load in MW
CC_s=18000;// Capital cost of steam plant in Rs./ kW installed
CC_h=30000;// Capital cost of hydro plant in Rs./ kW installed
CC_n=25000;// Capital cost of nuclear plant in Rs./ kW installed
OC_s=0.5;// Operating cost of steam plant in Rs./ kWh
OC_h=0.1;// Operating cost in hydro plant Rs./ kWh
T_h=0.05;// Transmission cost of hydro plant in Rs./ kWh
ID_s=(12/100)*CC_s;// Interest and decpreciation for steam plant 
ID_h=(10/100)*CC_h;// Interest and decpreciation for hydro plant 
Rc_n=0.25;// Running cost of nuclear plant in Rs./kWh
ID_n=10;// Interest and decpreciation for nuclear plant in % per annum

//Calculation
E=MD*10^3*F_l*8760;// Energy required per year in kWh
//(a)Steam plant
ID_1=ID_s*MD*10^3;// Interest and decpreciation(fixed plant)in Rs./year
OC_1=OC_s*E;// Operating cost Rs./year
Tc_1=ID_1+OC_1;// Total cost in Rs./year
Oc_kWh1=Tc_1/E;// Over all cost per kWh in Rs./kWh

//(b(i))Hydel Plant
ID_2=ID_h*(MD-MD_s)*10^3;// Interest and decpreciation(fixed cost)in Rs./year
E_h=(E-E_s);// Energy supplied by the hydro plant in kWh/year
OC_2=(E_h*OC_h)+T_h;// Operating or running cost including transmission in Rs./year
//(b(ii)) Steam station
L_t=E_s/8760;// Load taken in kW
MD_m=L_t/F_l;// Maximum load (Minimum plant capacity) in kW
ID_3=ID_s*MD_m;//Interest and decpreciation in Rs./year
OC_3=E_s*OC_s;// Operating cost Rs./year
Tc_2=ID_2+OC_2+ID_3+OC_3;// Total cost of both the plants in Rs./year
Oc_kWh2=Tc_2/E;// Over all cost per kWh in Rs./kWh

//(c)Nuclear plant 
ID_4=MD*10^3*CC_n*(ID_n/100);// Interest and decpreciation in Rs./year
Rc=E*Rc_n;// Running cost in Rs./year
Tc_3=(ID_4+Rc);// Total cost in Rs./year
Oc_kWh3=Tc_3/E;// Over all cost per kWh in Rs./kWh
printf('\n(a)The annual cost=Rs.%0.2e /year \n   The over all cost=Rs.%0.2f/kWh \n(b)The annual cost=Rs.%0.2e /year \n   The over all cost=Rs.%0.3f/kWh \n(c)The annual cost=Rs.%0.2e /year \n   The over all cost=Rs.%0.2f/kWh',Tc_1,Oc_kWh1,Tc_2,Oc_kWh2,Tc_3,Oc_kWh3);
// The answer provided in the textbook is wrong
