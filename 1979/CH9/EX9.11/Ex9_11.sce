//chapter-9 page 413 example 9.11
//==============================================================================
clc;
clear;

//For an M-Si-M Basitt diode 
er=11.8;//Relative dielectric constant of Si 
e0=8.854*10^(-12);//Permittivity of freespace in F/m
N=3*10^(21);//Donor Concentration per m^3
L=6.2*10^(-6);//Si Length in m
q=1.6*10^(-19);//Charge of an Electron in C

//CALCULATION
Vbd=((q*N*L^2)/(er*e0));//Breakdown Voltage in V
Ebd=(Vbd/L)/10^3;//Breakdown Electric Field in kV/m

//OUTPUT
mprintf('\nBreakdown Voltage is Vbd=%3.1f V \nBreakdown Electric Field is Ebd=%5.0f kV/m',Vbd,Ebd);

//=========================END OF PROGRAM===============================
