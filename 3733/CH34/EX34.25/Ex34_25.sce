// Example 34_25
clc;funcprot(0);
//Given data
P=12;// MW
MD=10;// MW
F_l=0.7;// load factor
CC=17000;// Rs./kW
C_td=3*10^6;// Cost of transmission and distribution system in rupees
ID=5;// Interest,depriciation on distribution system in %
Oc=3*10^6;// Operating cost in rupees
Cc=800;// Cost of coal in Rs./ton
Mc_f=0.3*10^6;// Plant maintainence costs in Rs./year (fixed)
Mc_r=350000;//Plant maintainence costs in Rs./year (running)
c=30*10^3;// Coal used in tons/year


//Calculation
ID_f=(10/100)*CC*P*10^3;//  Interest,depriciation etc. of the plant in Rs./year
ID_ftd=(5/100)*C_td;// Interest,depriciation etc.of the transmission and distribution in Rs./year
Ac_r=c*Cc;//Annual cost of coal in Rs./year
FC=ID_f+ID_ftd+Mc_f;// Fixed cost in Rs./year
RC=Ac_r+Oc+Mc_r;// Running cost in Rs./year
Gtc=FC+RC;// Grand total cost in Rs./year
E_g=MD*10^3*F_l*8760;// Energy generated per year in kWh
Tpt_1=(FC/(MD*10^3));// Rs./kW
Tpt_2=(RC/(E_g));// Rs./kWh
Oac=(FC+RC)/(E_g);// Over all cost/kWh
printf('\nTwo part tariff=Rs.%0.0f/kW+Rs.%0.3f/kWh \nOver all cost/kWh=Rs.%0.2f',Tpt_1,Tpt_2,Oac);
// The answer provided in the textbook is wrong
