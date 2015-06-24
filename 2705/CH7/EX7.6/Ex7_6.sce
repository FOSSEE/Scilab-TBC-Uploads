
clear;
clc;
disp('Example 7.6');

//  aim : To determine the
//  (a) heat transfer during the expansion and
//  (b) work done durind the expansion

//  given values
m = 4.5;  //  mass of steam,[kg]
P1 = 3;  //  initial pressure,[MN/m^2]
T1 = 300+273;  //  initial temperature,[K]

P2 = .1;  //  final pressure,[MN/m^2]
x2 = .96;  //  dryness fraction at final stage

//  solution
//  for state point 1,using steam table
s1 = 6.541;//  [kJ/kg/K]
u1 = 2751;// [kJ/kg]
 
 //  for state point 2
 sf2 = 1.303;//  [kJ/kg/K]
 sfg2 = 6.056;//  [kJ/kg/k]
 T2 = 273+99.6;//  [K]
 hf2 = 417;//  [kJ/kg]
 hfg2 = 2258;//  [kJ/kg]
 vg2 = 1.694;//   [m^3/kg]
 
 //  hence
 s2 = sf2+x2*sfg2;// [kJ/kg/k]
 h2 = hf2+x2*hfg2;// [kJ/kg]
 u2 = h2-P2*x2*vg2*10^3;// [kJ/kg]
 
 //  Diagram of example 7.6
 x = [s1 s2];
 y = [T1 T2];
plot2d(x,y);
 xtitle('Diagram for example 7.6(T vs s)');
 xlabel('Entropy (kJ/kg K)');
 ylabel('Temperature (K)');

x = [s1,s1];
y = [0,T1];
plot2d(x,y);

x = [s2,s2];
y = [0,T2];
plot2d(x,y);

 //  (a)
 //  Q_rev is area of T-s diagram
 Q_rev = (T1+T2)/2*(s2-s1);// [kJ/kg]
 //  so total heat transfer is
 Q_rev = m*Q_rev;// [kJ]
 
 //  (b)
 del_u = u2-u1;//  change in internal energy, [kJ/kg]
 //  using 1st law of thermodynamics
 W = Q_rev-m*del_u;//  [kJ]
 
mprintf('\n (a) The heat transfer during the expansion is  =  %f kJ  (received)\n',Q_rev);

 mprintf('\n (b) The work done during the expansion is  =  %f kJ\n',W);
 
 //  End
