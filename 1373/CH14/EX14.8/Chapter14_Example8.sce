//Chapter-14, Example 14.8, Page 590
//=============================================================================
clc
clear

//INPUT DATA
T=22+273;//Thermometer reading in K

//CALCULATIONS
p=2617;//Pressure in N/m^2
hfg=2449;//Enthalpy in kJ/kg
p1=(p*18)/(8315*T);//Density in kg/m^3
p2=(1.0132*10^5)/(287*T);//Density in kg/m^3
Cp=1.008;//Specific heat in kJ/kg.K
a=(26.2*10^-6);//Diffusivity in m^2/s
DAB=(0.26*10^-4);//DAB value in m^2/s
Ts=((T-273)+((hfg*1000*p1)/(p2*Cp*1000)));//True air temperature in degree C

//OUTPUT
mprintf('True air temperature is %3.2f degree C',Ts)

//=================================END OF PROGRAM==============================
