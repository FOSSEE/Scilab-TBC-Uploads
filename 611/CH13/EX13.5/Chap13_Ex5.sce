// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-13,Example 5,Page 483
//Title:Solubility of gas
//================================================================================================================
clear 
clc

//INPUT
t=295.43; //prevailing temperature in K
sat_p=6.05; //Sasturation pressure of carbon dioxide at the prevailing temperature in MPa
p=0.1; //pressure at which solubility has to be determined in MPa

//CALCULATION
x2=p/sat_p; //calculation of solubility using Eq.(13.44)(no unit)

//OUTPUT
mprintf('\n The solubility of carbon dioxide expressed in mole fraction of carbon dioxide in solution at 0.1MPa= %0.4f',x2);

//===============================================END OF PROGRAM===================================================
 
