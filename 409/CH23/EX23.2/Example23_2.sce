clear ;
clc;
// Example 23.2
printf('Example 23.2\n\n');
//page no. 687
// Solution 

// Basis : 1 g mol
R = 8.314 * 10^-3 ;// Ideal gas constant -[kJ/(g mol * K)]
Hv = 30.20 ;// Experimental value of heat of vaporization of acetone -[kJ/g]  

// additional needed data for acetone from Appendix D
T = 329.2 ;// Normal boiling point of acetone - [K]
Tc = 508.0 ;// Critical temperature  of acetone - [K]
Pc = 47.0 ;// Critical presure of acetone -[atm]

Tbc = T/Tc ;// variable required in etimation equations
lnPc = log(Pc)  ;//  variable required in etimation equations

//(a)
//Using the Clayperon and Antoine's equation(from eqn. 23.2), we get 
// del_Hv=(RBT^2)/(C+T)^2 -- eqn. c:
//From Appendix G
B = 2940.46 ;
C = -35.93 ;
// using eqn. c
del_Hv1 = (R*B*T^2)/((C+T)^2) ;//Heat of vapourization -[kJ/g]
d1 = (abs(Hv - del_Hv1)*100)/Hv ;// differece of experimental and calculated value -[%]
printf('(a) Heat of vapourization of acetone is %.2f kJ/g mol. And differece of experimental and calculated value is %.1f %% . \n', del_Hv1,d1);

//(b)
// Using Chen's equation (from eqn. 23.5)
del_Hv2 = R*T*((3.978*Tbc - 3.938 +1.555*lnPc)/(1.07 - Tbc)) ;//Heat of vapourization -[kJ/g]
d2 = (abs(Hv - del_Hv2)*100)/Hv ;// differece of experimental and calculated value -[%]
printf(' (b) Heat of vapourization of acetone is %.2f kJ/g mol. And differece of experimental and calculated value is %.1f %% . \n', del_Hv2,d2);

//(c)
// Using Riedel's Equation , from equation 23.6
del_Hv3 = 1.093*R*Tc*((Tbc*(lnPc-1))/(0.93-Tbc)) ;//Heat of vapourization -[kJ/g]
d3 = (abs(Hv - del_Hv3)*100)/Hv ;// differece of experimental and calculated value -[%]
printf(' (c) Heat of vapourization of acetone is %.2f kJ/g mol. And differece of experimental and calculated value is %.1f %% . \n', del_Hv3,d3);