//Chapter-12, Example 12.10, Page 517
//=============================================================================
clc
clear

//INPUT DATA
Ti=360;//Inlet temperature of hot fluid in degree C taken from Example no. 12.4 on page no. 510
To=300;//Outlet temperature of hot fluid in degree C taken from Example no. 12.4 on page no. 510
ti=30;//Inlet temperature of cold fluid in degree C taken from Example no. 12.4 on page no. 510
to=200;//Outlet temperature of cold fluid in degree C taken from Example no. 12.4 on page no. 510
U=800;//Overall heat transfer coefficient in W/m^2.K taken from Example no. 12.4 on page no. 510
Q=150000;//Calculated heat transfer rate in W from Example no. 12.4 on page no. 510 
Tlm=210.22//Calculated LMTD for counterflow arrangement in degree C taken from Example no. 12.4 on page no. 511

//CALCULATIONS
P=((to-ti)/(Ti-ti));//P value for calculation of correction factor
R=((Ti-To)/(to-ti));//R value for calculation of correction factor
F=0.98;//Correction Factor value taken from Fig.12.11 on page no.515
A=(Q/(U*F*Tlm));//Required surface area in a cross flow heat exchanger in m^2

//OUTPUT
mprintf('The required surface area in a cross flow heat exchanger is %3.2f m^2',A)

//=================================END OF PROGRAM==============================
