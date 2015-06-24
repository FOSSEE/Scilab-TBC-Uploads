clear;
clc;
disp('Example 5.11');

//  aim : To determine the
//  (a) original and final volume of the gas
//  (b) final pressure of the gas
//  (c) final temperature of the gas

//  Given values
m = .675;//  mass of the gas,[kg]
P1 = 1.4;//  original pressure,[MN/m^2]
T1 = 273+280;//  original temperature,[K]
R = .287;//gas constant,[kJ/kg K]

//  solution

//  (a)
//  using characteristic equation, P1*V1=m*R*T1
V1 = m*R*T1*10^-3/P1;//  [m^3]
//  also Given 
V2 =  4*V1;// [m^3]
mprintf('\n (a) The original volume of the gas is  =  %f  m^3\n',V1);
mprintf('\n      and The final volume of the gas is  =  %f  m^3\n',V2);

//  (b)
//  Given that gas is following the law P*V^1.3=constant
//  hence process is polytropic with 
n = 1.3; //  polytropic index
P2 = P1*(V1/V2)^n;//  formula for polytropic process,[MN/m^2]
mprintf('\n (b) The final pressure of the gas is  =  %f  kN/m^2\n',P2*10^3);

//  (c)
//  since mass is constant so,using P*V/T=constant
//  hence
T2 = P2*V2*T1/(P1*V1);//  [K]
t2 = T2-273;//  [C]
mprintf('\n (c) The final temperature of the gas is  =  %f C\n',t2);

//  End
