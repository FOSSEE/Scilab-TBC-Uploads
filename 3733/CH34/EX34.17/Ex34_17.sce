// Example 34_17
clc;funcprot(0);
//Given data
L=120;// Steam power station capacity in MW
Ac=1000;// Annual cost towards the interest and depriciation in Rs./kW
MD=100;// Peak demand in MW
OC=1200*10^4;// Operating costs in Rs./ year
Mc_f=200*10^4;// Maintainence costs (fixed) in Rs./ year
Mc_v=400*10^4;/// Maintainence costs (vaiable) in Rs./ year
Mic=100*10^4;// Miscellaneous costs in Rs./ year
C_c=320;// Cost of coal used in Rs./ton
CV=25000;// Calorific value in kJ/kg
n_o=20;// Over all efficiency of the plant in %
F_l=80/100;// Load factor


//Calculation
E_g=MD*10^3*F_l*8760;// Energy generated in kWh/year
SC=(0.8+3.5*F_l);//Steam consumption per kW load in kg
//1 kW load generates 0.8 kWh energy as load factor is 0.8.
SC_kW=SC/F_l;// Steam consumption per kWh in kg
// If W_c is the weight of the coal in tons used per year,
W_c=(E_g*3600)/(10^3*CV*(n_o/100));// tons/year
CC=W_c*C_c;// Cost of coal in Rs./year
Tfc=(Ac*L*10^3)+Mc_f;//Total fixed costs in  Rs./year
Tvc=OC+Mc_v+Mic+CC;//Total variable costs in Rupees
Tac=Tfc+Tvc;// Total annual cost in Rupees
Gc=Tac/E_g;//Generation cost in Rs./kWh
printf('\n(a)Coal cost per year=Rs%0.3e/year \n(b)Over all cost of generation=Rs%0.2f/kWh',CC,Gc);
