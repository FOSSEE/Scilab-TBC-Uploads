clear;
clc;
disp('Example 10.6');

//  aim : To determine
//  (a) the energy supplied in the boiler
//  (b) the dryness fraction of the steam entering the condenser
//  (c) the rankine efficiency

//  given values
P1 = 3.5;// steam entering pressure, [MN/m^2]
T1 = 273+350;// entering temperature, [K]
P2 = 10;//steam exhaust pressure, [kN/m^2]

// solution
//  (a)
//  from steam table, at P1 is,
hf1 = 3139;// [kJ/kg]
hg1 = 3095;// [kJ/kg]
h1 = hf1-1.5/2*(hf1-hg1);
// at Point 3
h3 = 191.8;// [kJ/kg]
Es = h1-h3;// energy supplied, [kJ/kg]
mprintf('\n (a) The energy supplied in boiler/kg steam is  =  %f kJ/kg\n',Es);

// (b)
// at P1
sf1 = 6.960;// [kJ/kg K]
sg1 = 6.587;// [kJ/kg K]
s1 = sf1-1.5/2*(sf1-sg1);// [kJ/kg K]
// at P2
sf2 = .649;// [kJ/kg K] 
 sg2 = 8.151;// [kJ/kg K]
 // s2=sf2+x2(sg2-sf2)
 // theoretically expansion through turbine is isentropic so s1=s2
 // hence
 s2 = s1;
 x2 = (s2-sf2)/(sg2-sf2);// dryness fraction
 mprintf('\n (b) The dryness fraction of steam entering the condenser is =  %f \n',x2);
 
 // (c)
 // at point 2
 hf2 = 191.8;// [kJ/kg]
 hfg2 = 2392.9;// [kJ/kg]
 h2 = hf2+x2*hfg2;// [kJ/kg]
 Re = (h1-h2)/(h1-h3);// rankine efficiency
 mprintf('\n (c) The Rankine efficiency is  =  %f percent\n',Re*100);
 
 //  End
