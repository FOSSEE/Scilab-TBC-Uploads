//chapter-9 page 411 example 9.4
//==============================================================================
clc;
clear;

es=12.5;//Relative Dielectric constant
e0=8.854*10^(-12);//Permittivity in Free Space in F/m
N=3.2*10^22;//Donor Concentration per m^3
L=8*10^(-6);//Length of Si BARITT diode in m
q=1.6*10^(-19);//Charge of an Electron in C

//CALCULATION
Vc=((q*N*L^2)/(2*es*e0))/10^3;//Critical Voltage in kV
Vbd=2*Vc;//Breakdown Voltage in kV
Ebd=(Vbd/L)/100;//Breakdown Electric Field in kV/cm

//OUTPUT
mprintf('\nCritical Voltage is Vc=%1.2f kV \nBreakdown Voltage is Vbd=%1.2f kV \nBreakdown Electric Field is Ebd=%6.2f kV/cm',Vc,Vbd,Ebd);

//=========================END OF PROGRAM===============================
