// Exa 3.20
clc;
clear;
close;
// Given data
T=15+273;//in K
U= 8.3143;// in kJ/kg-mol-K
GasConstant = 0.618;// in kJ/kg-K
GasVolume= 1;// in m^3 (assume)
AirVolume= 1.5*GasVolume;// in m^3
P=760;// in mm
P= P/750;// in bar
P= P*10^5;//in N/m^2
MixtureVolume= GasVolume+AirVolume;//in m^3
disp("Percentage of gas by volume in the mixture in % is : ")
PGM= GasVolume/MixtureVolume*100;// in %
disp(PGM);
disp("Percentage of air by volume in the mixture in % is : ")
PAM= AirVolume/MixtureVolume*100;// in %
disp(PAM);
M1= U/0.287;// in mol
M2= U/0.618;// in mol
M= PAM/100*M1+PGM/100*M2;// mass of mixture in mol
R= U/M;// gas constant in kJ/kg-K
R= R*10^3;//in J/kg-K
disp(R*10^-3,"The gas constant in kJ/kg-K is : ");
disp("Percentage of air by mass in the mixture in % is ")
PAM1= PAM*M1/M;// in %
disp(PAM1);
disp("Percentage of gas by mass in the mixture in % is ")
PGM1= PGM*M2/M;// in %
disp(PGM1);
Rho= P/(R*T);// kg/m^3
disp(Rho,"The density of the gas in kg/m^3 is : ")
