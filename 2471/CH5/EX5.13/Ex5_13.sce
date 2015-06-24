clear ;
clc;
// Example 5.13
printf('Example 5.13\n\n');
printf('Page No. 131\n\n');

// given
T = 300;// in degree celcius
v = 2;// velocity in m/s
d = 40*10^-3;// diameter in m

// From the table 5.3 and 5.4 given in the  book
K_d = [2.80 2.65 2.55 2.75]// in W/m^2-k
Re = [117*10^3 324*10^3 159*10^3 208*10^3]//Reynolds number
Pr = [12 4.50 10.0 7.3]//Prandtl Number

// By Dittus-Boelter Equation
//Nu = 0.0232 * Re^0.8*Pr^0.3 = (hd)/K
//h =  0.0232 * Re^0.8*Pr^0.3 *(K/d)

h_T = 0.0232 * Re(1)^0.8*Pr(1)^0.3*K_d(1);// //W/m^2-K
printf('The film heat transfer coefficient using Transcal N is %.0f W/sq.m K \n',h_T)// Deviation in answer due to direct substitution 


h_D = 0.0232 * Re(2)^0.8*Pr(2)^0.3*K_d(2);// //W/m^2-K
printf('The film heat transfer coefficient using Dowtherm A is %.0f W/sq.m K \n\n',h_D)// Deviation in answer due to direct substitution 


h_M = 0.0232 * Re(3)^0.8*Pr(3)^0.3*K_d(3);// //W/m^2-K
printf('The film heat transfer coefficient using Marlotherm S is %.0f W/sq.m K \n',h_M)// Deviation in answer due to direct substitution 


h_S = 0.0232 * Re(4)^0.8*Pr(4)^0.3*K_d(4);// //W/m^2-K
printf('The film heat transfer coefficient using Santotherm 60 is %.0f W/sq.m K \n',h_S)// Deviation in answer due to direct substitution 




