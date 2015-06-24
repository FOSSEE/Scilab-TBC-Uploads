// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-4,Example 11,Page 107
//Title:Final temperature,Pressure and work done in adiabatic process
//================================================================================================================
clear 
clc

//INPUT
volume_ratio=1/15;//final volume to the initial volume of air at the end of compression stroke (no unit)
gaamma=1.4;//ratio of the molar heat capacities at constant pressure and constant volume for air (no unit)
T1=300;//initial temperature of air in K
P1=0.1;//initial pressure of air in MPa
R=8.314;//universal gas constant in J/molK

//CALCULATION
T2=T1*((1/volume_ratio)^(gaamma-1));//calculation of final temperature in K using Eq.(4.32)
P2=P1*((1/volume_ratio)^(gaamma));//calculation of final pressure in MPa using Eq.(4.34)
W=(R*(T1-T2)*10^-3)/(gaamma-1);//calculation of work to be done on the system in kJ/mol using Eq.(4.31)

//OUTPUT
mprintf('\n The final temperature= %0.2f K\n',T2);
mprintf('\n The final pressure= %0.4f MPa\n',P2);
mprintf('\n Work done per mole of air= %0.3f kJ/mol\n',W);

//===============================================END OF PROGRAM===================================================

