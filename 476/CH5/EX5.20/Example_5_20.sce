//A Textbook of Chemical Engineering Thermodynamics
//Chapter 5
//Some Applications of the Laws of Thermodynamics
//Example 20


clear;
clc;


//Given:
P2 = 7600; //pressure of superheated steam (kPa)
P1 = 5; //pressure after expansion (kPa)
V = 1.005*10^-3; //specific volume of saturated liquid (m^3/kg)

//From steam tables:
H_l1 = 138; //enthalpy of saturated liquid at 5 kPa (kJ/kg)
S_l1 = 0.4764; //entropy of saturated liquid at 5 kPa (kJ/kg K)
H_v1 = 2562; //enthalpy of saturated vapour at 5 kPa (kJ/kg)
S_v1 = 8.3951; //entropy of saturated vapour at 5 kPa (kJ/kg K)
H_l2 = 830; //enthalpy of saturated liquid at 1400 kPa(kJ/kg)
S_l2 = 2.2842; //entropy of saturated liquid at 1400 kPa (kJ/kg K)
H_v2 = 2790; //enthalpy of saturated vapour at 1400 kPa (kJ/kg)
S_v2 = 6.4693; //entropy of saturated vapour at 1400 kPa (kJ/kg K)
H5 = 3226; //enthalpy of superheated steam at 1400 kPa and 658 K
S5 = 7.2558; //entropy of superheated steam at 1400 kPa and 658 K
H3 = 3150; //enthalpy of superheated steam at 7600 kPa and 673 K
S3 = 6.4022; //entropy of superheated steam at 1400 kPa and 673 K

//To determine the work output, thermal efficiency and rate of steam circulation
//(a)
//For high pressure turbine 
//Let the fraction of steam in vapour state be x
S4 = S3; //as the expansion process is isentropic
x = (S4-S_l2)/(S_v2-S_l2);
H4 = H_l2 + x*(H_v2-H_l2);
W_high = H3-H4;

//For low pressure turbine
S6 = S5; //isentropic expansion
x = (S6-S_l1)/(S_v1-S_l1);
H6 = H_l1 + x*(H_v1-H_l1);
W_low = H5-H6;

mprintf('(a)');
mprintf('\n The work output of high pressure turbine is %i kJ/kg',W_high);
mprintf('\n The work output of low pressure turbine is %i kJ/kg',W_low);

//(b)
//Work output of feed pump is [-Ws = intg(VdP)]
Ws = V*(P2-P1);
H2 = H_l1+Ws;
//Using eq. 5.82 (Page no. 159)
eff = ((H3-H2)+(H5-H4)-(H6-H_l1))/((H3-H2)+(H5-H4));
mprintf('\n\n (b)');
mprintf('\n Thermal efficiency is %f percent',eff*100);

//(c)
//The numerator of eq. 5.82 gives net work output
W_net = (H3-H2)+(H5-H4)-(H6-H_l1);
//For 1000 kW of net work output
rate = 3.6*10^6/W_net;
mprintf('\n\n (c)');
mprintf('\n The rate of steam circulation is %f kg/h',rate);

//end
