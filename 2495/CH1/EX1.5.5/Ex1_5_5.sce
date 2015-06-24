clear;
clc;
P=760;//in torr
dP=52;//in torr
dT=2;//in K
DelH_RTb=10.5;//Trouton rule
Tb=(DelH_RTb*P)/(dP/dT)
printf('Tb=%.1f K',Tb)
R=8.314;//in J/Kmol
DelH_v=(DelH_RTb*R*Tb)
printf('\nDelH_v=%1d J/mol',DelH_v)

//There are some errors in the solution given in textbook
//page 17

