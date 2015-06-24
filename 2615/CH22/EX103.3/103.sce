clc
//initialisation of variables
l=20//m
e=0.00025//mm
E=2000000//kg/cm^2
f=19.6//cm^2
//CALCULATIONS
sig=E*e//kg/cm^2
Del=sig*f//kg
L=e*l//m
//RESULTS
printf('the pressure of bearings normal operations=% f m',L)
