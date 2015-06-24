clear;
clc;
disp('Example 5.16');

//  aim : To determine the 
//  (a) initial partial pressure of the steam and air
//  (b) final partial pressure of the steam and air
//  (c) total pressure in the container after heating

//  Given values
T1 = 273+39;//  initial temperature,[K]
P1 = 100;//  pressure, [MN/m^2]
T2 = 273+120.2;//  final temperature,[K]

//  solution

//  (a)
//  from the steam tables, the pressure of wet steam at 39 C is
Pw1 = 7;//  partial pressure of wet steam,[kN/m^2]
//  and by Dalton's law
Pa1 = P1-Pw1;//  initial pressure of air, [kN/m^2]

mprintf('\n (a) The initial partial pressure of the steam is  =  %f  kN/m^2',Pw1);
mprintf('\n      The initial partial pressure of the air is  =  %f kN/m^2\n',Pa1);

//  (b)
//  again from steam table, at 120.2 C the pressure of wet steam is
Pw2 = 200;//  [kN/m^2]

//  now since volume is constant so assuming air to be ideal gas so for air  P/T=contant, hence
Pa2 = Pa1*T2/T1 ;//  [kN/m^2]

mprintf(' \n(b) The final partial pressure of the steam is  =  %f kN/m^2',Pw2);
mprintf('\n     The final partial pressure of the air is  =  %f  kN/m^2\n',Pa2);

//  (c)
Pt = Pa2+Pw2;//  using dalton's law, total pressure,[kN/m^2]
mprintf('\n (c) The total pressure after heating is  =  %f  kN/m^2\n',Pt);

//  End
