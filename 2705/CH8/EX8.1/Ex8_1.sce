
clear;
clc;
disp('Example 8.1');

//  aim : To determine
//   the stoichiometric mass of air required to burn 1 kg the fuel 

//  Given values
C = .72;//  mass fraction of C; [kg/kg]
H2 = .20;//  mass fraction of H2;, [kg/kg]
O2 = .08;//  mass fraction of O2, [kg/kg]
aO2=.232;//  composition of oxygen in air

//  solution
//  for 1kg of fuel
mO2  = 8/3*C+8*H2-O2;//  mass of O2, [kg]

//  hence stoichiometric mass of O2 required is
msO2  = mO2/aO2;// [kg]

mprintf('\n The stoichiometric mass of air required to burn 1 kg the fuel should be =  %f  kg\n',msO2);

//  End
