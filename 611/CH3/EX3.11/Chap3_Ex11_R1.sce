// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-3,Example 11,Page 72
//Title:Volume using two paramter and three parameter compressibility factor correlation
//================================================================================================================
clear 
clc

//INPUT
T=409.41;//temperature of n-octane in degree celsius
P=4.98;//pressure in bar
Tc=569.4;//critical temperature of n-octane in K
Pc=24.97;//critical pressure of n-octane in bar
w=0.398;//acentric factor (no unit)
R=8.314;//universal gas constant in (Pa m^3)/(mol K)

//CALCULATION
Tr=(T+273.15)/Tc;//calculation of reduced temperature (no unit)
Pr=P/Pc;//calculation of reduced pressure (no unit)
z0=0.96;//value of compressibilty factor at tr and pr obtained from Fig.3.11 
V1=(z0*R*(T+273.15))/(P*10^5);//calculation of volume in m^3/mol using the two parameter compressibilty factor correlation
z1=0.01;//value of compressibilty factor at tr and pr obtained from Fig.3.12
z=z0+(w*z1);//calculation of compressibility factor using Eq.3.64
V2=(z*R*(T+273.15))/(P*10^5);//calculation of volume in m^3/mol using the three parameter compressibility factor correlation

//OUTPUT
mprintf('\n The volume occupied by n-octane obtained by the two parameter compressibilty factor correlation= %f m^3/mol\n',V1);
mprintf('\n The volume occupied by n-octane obtained by the three parameter compressibility factor correlation= %f m^3/mol\n',V2);


//===============================================END OF PROGRAM===================================================
