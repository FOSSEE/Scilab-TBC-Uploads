clc;
disp('Example 16.6');

// aim : To determine
// (a) the mass of fuel oil used by the gas turbine
// (b) the mass flow of steam from the boiler 
// (c) the theoretical output from the steam turbine
// (d) the overall theoretical thermal efficiency of the plant

// given values
Po = 150;// generating plant output, [MW]
n_the1 = .35;// thermal efficiency
CV = 43;// calorific value of fuel, [MJ]
me = 400;// flow rate of exhaust gas, [kg/s]
T = 90;// boiler exit temperature, [C]
T1 = 550;// exhaust gas temperature, [C]
P2 = 10;// steam generation pressure, [MN/m^2]
T2 = 450;// boiler exit temperature, [C]
Tf = 140;// feed water temperature, [C]
n_tur = .86;// turbine efficiency
P3 = .5;// exhaust temperature, [MN/m^2]
n_boi = .92;// boiler thermal efficiency
cp = 1.1;// heat capacity, [kJ/kg]


//  solution
// (a)
ER = Po*3600/n_the1;// energy requirement from the fuel, [MJ/h]
mf = ER/CV*10^-3;// fuel required, [tonne/h]
mprintf('\n (a) The mass of fuel oil used by the gas is  =  %f  tonne/h\n',mf);

// (b) 

ET = me*cp*(T1-T)*3600*n_boi;// energy transferred to steam,[kJ/h]
// from steam table
h1 = 3244;// specific enthalpy, [kJ/kg]
hf = 588.5;// specific enthalpy, [kJ/kg]
ERR = h1-hf;// energy required to raise steam, [kJ/kg]
ms = ET/ERR*10^-3;// mass flow of steam, [tonne/h]
mprintf('\n (b) The mass flow  rate of steam from the boiler is  =  %f  tonne/h\n',ms);

// again from steam table
s1 = 6.424;// specific entropy, [kJ/kg K]
sf2 = 1.86;// specific entropy, [kJ/kg K
sg2 = 6.819;// specific entropy, [kJ/kg K]

hf2 = 640.1;// specific enthalpy,[kJ/kg]
hg2 = 2747.5;// specific enthalpy, [kJ/kg]
// for ths process s1=s2=sf2+x2*(sg2-sf2)
s2 = s1;
// hence
x2 = (s2-sf2)/(sg2-sf2);// dryness fraction

h2_prim = hf2+x2*(hg2-hf2);// specific enthalpy of steam, [kJ/kg]

TO = n_tur*(h1-h2_prim);//theoretical steam turbine output, [kJ/kg]
TOt = TO*ms/3600;// total theoretical steam turbine output, [MW]

mprintf('\n (c) The theoretical output from the steam turbine is  =  %f  MW\n',TOt);

// (d)
n_tho = (Po+TOt)*n_the1/Po;// overall theoretical thermal efficiency
mprintf('\n (d) The overall thermal efficiency is  =  %f  percent\n',n_tho*100);

//  End
