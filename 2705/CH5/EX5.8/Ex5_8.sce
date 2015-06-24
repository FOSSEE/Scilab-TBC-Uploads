clear;
clc;
disp('Example 5.8');

//  aim : To determine 
//  the heat transferred from the gas and the work done on the gas

//  Given values
P1 = 275;//  pressure, [kN/m^2]
V1 = .09;//  volume,[m^3]
T1 = 273+185;//  initial temperature,[K]
T2 = 273+15;//  final temperature,[K]
cp = 1.005;//  specific heat capacity at constant pressure,[kJ/kg K]
R = .29;//  gas law constant,[kJ/kg K]

//  solution
//  using P1*V1=m*R*T1
m = P1*V1/(R*T1);//  mass of the gas

//  calculation of heat transfer
Q = m*cp*(T2-T1);//  Heat transferred at constant pressure,[kJ]
mprintf('\n The heat transferred to the gas is  =  %f  kJ\n',Q);

//  calculation of work done
//  Now,since pressure is constant so, V/T=constant
// hence
V2 = V1*T2/T1;//  [m^3]

W = P1*(V2-V1);//  formula for work done at constant pressure,[kJ]
mprintf('\n Work done on the gas during the process is  =  %f  kJ\n',W);

//  End

