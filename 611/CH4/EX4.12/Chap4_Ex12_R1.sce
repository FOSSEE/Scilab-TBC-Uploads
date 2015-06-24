// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-4,Example 12,Page 110
//Title:Final temperature Pressure work done and heat interaction in polytropic process
//================================================================================================================
clear 
clc

//INPUT
volume_ratio=1/15;//final volume to the initial volume of ideal gas at the end of compression (no unit)
T1=300;//initial temperature of ideal gas in K
P1=0.1;//initial pressure of ideal gas in MPa
R=8.314;//universal gas constant in J/molK
n=1.2;//index of expansion (no unit)
gaamma=1.4;//ratio of the molar heat capacities at constant pressure and constant volume for ideal gas (no unit)

//CALCULATION
P2=P1*((1/volume_ratio)^n);//calculation of final pressure in MPa using Eq.(4.37)
T2=T1*(P2/P1)*(volume_ratio);//calculation of final temperature in K (since the gas is taken to be ideal, (P1*V1)/T1=(P2*V2)/T2))
W=(R*(T1-T2)*10^-3)/(n-1);//calculation of work to be done on the system in kJ/mol using Eq.(4.38)
del_u=(R*(T2-T1)*10^-3)/(gaamma-1);//calculation of the change in the internal energy in kJ/mol using Eq.(4.28 and 4.29) (del_u=Cv*(T2-T1) and Cv=R/(gaamma-1))
q=del_u+W;//calculation of the heat interaction during the process in kJ/mol using the first law of thermodynamics

//OUTPUT
mprintf('\n The final pressure= %0.3f MPa\n',P2);
mprintf('\n The final temperature= %0.1f K\n',T2);
mprintf('\n Work done on the gas= %f kJ/mol\n',W);
mprintf('\n Heat interaction during the process= %f kJ/mol\n',q);

//===============================================END OF PROGRAM===================================================


