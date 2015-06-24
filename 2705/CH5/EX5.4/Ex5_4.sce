clear;
clc;
disp('Example 5.4');

//  aim : To determine 
//  the final temperature

//  Given values
V1 = .2;//  original volume,[m^3]
T1 = 273+303;// original temperature, [K]
V2 = .1;// final volume, [m^3]

//  solution
//  since pressure is constant, so using charle's law V/T=constant
//  hence
T2 = T1*V2/V1;//  [K]
t2 = T2-273;//  [C]
mprintf('\n The final temperature of the gas is  =  %f  C\n',t2);

//  End
