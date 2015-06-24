// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-5,Example 19,Page 186
//Title: Power consumed by the compressor
//================================================================================================================
clear 
clc

//INPUT
Ti=25;//temperature of air taken in by the adiabatic air compressor in degree celsius
Pi=0.1;//pressure of air taken in by the adiabatic air compressor in MPa
Pe=1;//discharge pressure of air in MPa
n_c=0.8;//isentropic efficiency of the compressor (no unit)
gaamma=1.4;//ratio of molar specific heat capacities (no unit)
R=8.314;//universal gas constant in J/molK

//CALCULATION
Ti=Ti+273.15;//conversion of temperature in K
Te=Ti*(((Pe*10^6)/(Pi*10^6))^((gaamma-1)/gaamma));//calculation of the discharge temperature of air using Eq.(4.35) in K (for reversible and adiabatic compression)
W_s=(((R*gaamma)/(gaamma-1))*(Te-Ti))*10^-3;//calculation of the power consumed by the isentropic compressor using Eq.(5.69) in kW
Ws=W_s/n_c;//calculation of the power consumed by an actual compressor per mole of air using Eq.(5.68)in kW 
Te_actual=((Ws*10^3*(gaamma-1))/(R*gaamma))+Ti;//calculation of the exit temperature of air in K

//OUTPUT
mprintf("\n The exit temperature of air=%0.2f K\n",Te_actual);
mprintf("\n The power consumed by the compressor =%f kW/mol\n",Ws);


//===============================================END OF PROGRAM===================================================
