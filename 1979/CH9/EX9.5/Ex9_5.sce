//chapter-9 page 412 example 9.5
//==============================================================================
clc;
clear;

J=33000;//Current density in A/sqcm
Na=2.5*10^16;//Doping Concentation in TRAPATT diode per cubic cm
q=1.6*10^(-19);//Charge of an Electron in C

//CALCULATION
Vz=(J/(q*Na))/10^5;//Avalanche Zone Velocity in Km/sec

//OUTPUT
mprintf('\nAvalanche Zone Velocity is Vz=%2.1f Km/sec',Vz);

//=========================END OF PROGRAM===============================
