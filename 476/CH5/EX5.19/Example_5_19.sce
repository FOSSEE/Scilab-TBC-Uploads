//A Textbook of Chemical Engineering Thermodynamics
//Chapter 5
//Some Applications of the Laws of Thermodynamics
//Example 19


clear;
clc;


//Given:
P2 = 2800; //pressure of superheated steam (kPa)
P1 = 5; //pressure after expansion (kPa)
e_turbine = 0.85; //isentropic turbine efficiency
e_pump = 0.8; //isentropic pump efficiency
V = 1.005*10^-3; //specific volume of saturated liquid at 5 kPaHl = 

//From steam tables:
Hl = 138; //enthalpy of saturated liquid at 5 kPa (kJ/kg)
Hv = 2562; //enthalpy of saturated vapour at 5 kPa (kJ/kg)
H3 = 3063; //enthalpy of superheated steam at 2800 kPa and 598 K (kJ/kg)
Sl = 0.4764; //entropy of saturated liquid at 5 kPa (kJ/kg K)
Sv = 8.3951; //entropy of saturated vapour at 5 kPa (kJ/kg K)
S3 = 6.6875; //entropy of superheated steam at 2800 kPa and 598 K (kJ/kg K)
 
 
//To determine the ideal Rankine cycle efficiency, thermal efficiency and rate of steam production

//(a)..The ideal Rankine cycle efficiency for the stated conditions
//Referring fig 5.19(b) (Page no. 155) and considering feed water pump
Ws = V*(P2-P1); //work done by pump (kJ/kg)
H2 = Hl+Ws;
//Considering isentropic expansion in turbine
S4 = S3;
x = (S4-Sl)/(Sv-Sl); //fraction of steam that is vapour
H4 = Hl + x*(Hv-Hl);
//Using eq. 5.80 (Page no. 155)
e_r = ((H3-H2)-(H4-Hl))/(H3-H2);
mprintf('(a). The ideal Rankine cycle efficiency for the stated conditions is %i percent',e_r*100);

//(b)..The thermal efficiency of plant
W_act = Ws/e_pump; //actual work requirement in pump
H_2 = Hl + W_act; //enthalpy of water leaving the feed water pump
W_out = e_turbine*(H3-H4); //actual work output
H_4 = H3-W_out; //actual enthalpy of steam leaving the turbine
e_act = ((H3-H_2)-(H_4-Hl))/(H3-H_2);
mprintf('\n (b). The actual efficiency is %f percent',e_act*100);

//(c)..The rate of steam production
W_net = e_act*(H3-H_2); //net work output (kJ/kg)
rate = (3.6*10^6)/W_net; //steam produced in boiler (kg/h)
mprintf('\n (c). The rate of steam production is %f kg/h',rate);

//end