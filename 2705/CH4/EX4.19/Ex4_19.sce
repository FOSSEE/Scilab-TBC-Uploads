clear;
clc;
disp('Example 4.19');

//  aim : To determine the condition of the steam after 
//  (a) isothermal compression to half its initial volume,heat rejected
//  (b) hyperbolic compression to half its initial volume

//  Given values
V1 = .3951;//  initial volume,[m^3]
P1 = 1.5;//  initial pressure,[MN/m^2]

//  solution

//  (a)
//  from steam table, at 1.5 MN/m^2 
hf1 = 844.7;//  [kJ/kg]
hfg1 = 1945.2;//  [kJ/kg]
hg1 = 2789.9;// [kJ/kg]
vg1 = .1317;//  [m^3/kg]

//  calculation
m = V1/vg1;//  mass of steam,[kg]
vg2b = vg1/2;// given,[m^3/kg](vg2b is actual specific volume before compression)
x1 = vg2b/vg1;//  dryness fraction
h1 = m*(hf1+x1*hfg1);//  [kJ]
Q = m*x1*hfg1;//  heat loss,[kJ]
mprintf('\n (a) The Quantity of steam present is  =  %f kg \n',m);
mprintf('\n      Dryness fraction is  =  %f \n',x1);
mprintf('\n      The enthalpy is  =  %f kJ \n',h1);
mprintf('\n      The heat loss is  =  %f kJ \n',Q);

//  (b)
V2 = V1/2;
//  Given compression is according to the law PV=Constant,so
P2 = P1*V1/V2;//  [MN/m^2]
//  from steam table at P2
hf2 = 1008.4;// [kJ/kg]
hfg2 = 1793.9;//  [kJ/kg]
hg2 = 2802.3;//  [kJ/kg]
vg2 = .0666;//  [m^3/kg]

//  calculation
x2 = vg2b/vg2;//  dryness fraction
h2 = m*(hf2+x2*hfg2);//  [kJ]

mprintf('\n (b) The dryness fraction is  =  %f \n',x2);
mprintf('\n     The enthalpy is  =  %f kJ\n',h2);

//  End
