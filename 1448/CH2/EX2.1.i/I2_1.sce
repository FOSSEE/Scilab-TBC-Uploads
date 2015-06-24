clc
//Initialization of variables
Cpm=75 //J/k mol
n=5.55 //mol
q=1 //kJ
//Calculations
deltaT=q*1000/(n*Cpm)
//results
printf('Change in temperature = %.1f K',deltaT)
