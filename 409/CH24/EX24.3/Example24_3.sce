clear ;
clc;
// Example 24.3
printf('Example 24.3\n\n');
//page no. 728
// Solution Fig. E24.3

// Given
 m_CO2 = 10 ;// mass of CO2 - [lb]
 Ti_CO2 = 80 ;// Initial temperature of CO2 - [degree F]
 Vi = 4.0 ;// Initial volume of CO2-[cubic feet]
 f_CO2 = 40/100 ;// Fraction of CO2 that convert to liquid finally 
 s_Vi = Vi /m_CO2 ;// Initial specific volume of CO2 - [cubic feet/lb]
 s_Vf = s_Vi ;// Constant volume -[cubic feet/lb]
// Use the CO2 chart in Appendix J  to necessary data, according to book it is 
// CO2 is gas at start of process and reference state for the CO2 chart is -40 degree F , saturated liquid 
// From chart 
Pi = 300 ;// Intial pressure - [psia]
del_Hi = 160 ;// Intial change in specific enthalpy - [Btu/lb]
// Now again use chart to get fnal condition fixed by constant volume line and quality 0.6 , according to book it is 
del_Hf = 81 ;// Final change in specific enthalpy - [Btu/lb]
Pf = 140 ;//Final pressure - [psia]
// Use conditions given in problem ( W= 0 ,since volume is constant ,therefore  del_PE and del_KE =0 ),simplifing the energy balance equation we get Q = del_H - del_(PV)
// Analysing the given conditions dof of system = 0 , with 1 eqn. and 1 unknown Q
Q = ((del_Hf - del_Hi) - (Pf * s_Vf * 144/778.2 - Pi * s_Vi * 144/778.2))*m_CO2 ;// Heat removed from the extinguisher -[Btu]

 printf(' Heat removed from the extinguisher is %i Btu .\n',Q);