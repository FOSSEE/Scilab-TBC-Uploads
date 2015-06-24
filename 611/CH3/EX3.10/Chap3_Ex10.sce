// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-3,Example 10,Page 67
//Title:Acentric factor
//================================================================================================================
clear 
clc

//INPUT
T=180;//temperature of water in degree celsius
P=1.0027;//saturation pressure of water in MPa
Tc=647.3;//critical temperature of water in K
Pc=221.2;//critical pressure of water in bar
Tr=0.7;//reduced temperature at which acentric factor was defined by Pitzer 

//CALCULATION
T1=Tr*Tc;//calculating temperature  in K using reduced temperature value
T1=T1-273.15;//conversion to degree celsius
Pr=(P*10)/Pc;//calculation of reduced pressure (no unit) using saturation pressure at t1. In this case t1 equals t, therefore the given saturation pressure is taken
w=-log10(Pr)-1.0;//calculation of acentric factor using Eq.(3.62)

////OUTPUT
mprintf('\n The acentric factor of water= %f \n',w);


//===============================================END OF PROGRAM===================================================
