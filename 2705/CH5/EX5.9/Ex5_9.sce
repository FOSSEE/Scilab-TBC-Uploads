clear;
clc;
disp('Example 5.9');

//  aim : To determine
//  the new pressure of the gas

//  Given values
P1 = 300;//  original pressure,[kN/m^2]
T1 = 273+25;//  original temperature,[K]
T2 = 273+180;//  final temperature,[K]

//  solution
//  since gas compressing according to the law,P*V^1.4=constant
//  so,for polytropic process,T1/T2=(P1/P2)^((n-1)/n),here n=1.4

//  hence
P2 = P1*(T2/T1)^((1.4)/(1.4-1));//  [kN/m^2]

mprintf('\n The new pressure of the gas is  =  %f  kN/m^2\n',P2);

//  End
