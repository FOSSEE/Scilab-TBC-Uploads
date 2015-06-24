clear;
clc;
disp('Example 8.4');

//  aim : To determine 
//  the stoichiometric volume of air required for complete combution of 1 m^3 of the gas

//  Given values
H2 = .14;// volume fraction of H2
CH4 = .02;// volume fraction of CH4
CO = .22;// volume fraction of CO
CO2 = .05;// volume fraction of CO2
O2 = .02;// volume fraction of O2
N2 = .55;// volume fraction of N2

// solution
//  for 1 m^3 of fuel
Va = .5*H2+2*CH4+.5*CO-O2;// [m^3]

//  stoichiometric air required is
Vsa = Va/.21;//  [m^3]

mprintf('\n The  stoichiometric volume of air required for complete combustion is  =  %f  m^3/m^3  fuel\n',Vsa);

// End
