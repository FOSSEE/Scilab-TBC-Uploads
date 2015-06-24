clear;
clc;
disp('Example 10.7');

// aim : To determine
//  the specific work done and compare this with that obtained when determining the rankine effficiency

// given values
P1 = 1000;// steam entering pressure, [kN/m^2]
x1 = .97;// steam entering dryness fraction
P2 = 15;//steam exhaust pressure, [kN/m^2]
n = 1.135;// polytropic index

// solution
// (a)
// from steam table, at P1 is
hf1 = 762.6;// [kJ/kg]
hfg1 = 2013.6;// [kJ/kg]
h1 = hf1+hfg1; // [kJ/kg]

sf1 = 2.138;// [kJ/kg K]
sg1 = 6.583;// [kJ/kg K]
s1 = sf1+x1*(sg1-sf1);// [kJ/kg K]

// at P2
sf2 = .755;// [kJ/kg K] 
 sg2 = 8.009;// [kJ/kg K]
// s2 = sf2+x2(sg2-sf2)
// since expansion through turbine is isentropic so s1=s2
 // hence
 s2 = s1;
 x2 = (s2-sf2)/(sg2-sf2);// dryness fraction
 
  // at point 2
 hf2 = 226.0;// [kJ/kg]
 hfg2 = 2373.2;// [kJ/kg]
 h2 = hf2+x2*hfg2;// [kJ/kg]
 
// at Point 3
h3 = 226.0;// [kJ/kg]

// (a)
 Re = (h1-h2)/(h1-h3);// rankine efficiency
 mprintf('\n (a) The Rankine efficiency is  =  %f percent\n',Re*100);
 
// (b)
vg1 = .1943;// specific volume at P1, [m^3/kg]
vg2 = 10.02;// specific volume at P2, [m^3/kg]
V1 = x1*vg1;// [m^3/kg]
V2 = x2*vg2;// [m^3/kg]

W1 = n/(n-1)*(P1*V1-P2*V2);// specific work done, [kJ/kg]

//  from rankine cycle
W2 = h1-h2;// [kJ/kg]
mprintf('\n (b) The specific work done is  =  %f kJ/kg\n',W1);
mprintf('\n     The specific work done (from rankine) is  =  %f kJ/kg\n',W2);

// there is calculation mistake in the book so our answer is not matching

//  End
