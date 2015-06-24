clear;
clc;
disp('Example 5.7');

//  aim : To determine 
//  the heat transferred to the gas and its final pressure

//  Given values
m = 2;//  masss of the gas, [kg]
V1 = .7;//  volume,[m^3]
T1 = 273+15;//  original temperature,[K]
T2 = 273+135;//  final temperature,[K]
cv = .72;//  specific heat capacity at constant volume,[kJ/kg K]
R = .29;//  gas law constant,[kJ/kg K]

//  solution
Q = m*cv*(T2-T1);//  Heat transferred at constant volume,[kJ]
mprintf('\n The heat transferred to the gas is  =  %f  kJ\n',Q);

//  Now,using P1*V1=m*R*T1
P1 = m*R*T1/V1;//  [kN/m^2]

//  since volume of the system is constant, so P1/T1=P2/T2
//  hence
P2 = P1*T2/T1;//  final pressure,[kN/m^2]
mprintf('\n The final pressure of the gas is  =  %f  kN/m^2 \n',P2);

//  End
