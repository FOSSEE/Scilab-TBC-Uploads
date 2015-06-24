clc
//initialisation of variables
clear
T1= 100 //C
T2= 90 //C
p= 76 //cm of hg
H= 542*18.02 //cal mole^-1
//CALCULATIONS
p1= p/10^((H/4.576)*((T1-T2)/((273.2+T1)*(273.2+T2))))
//RESULTS
printf ('Final vapour pressure of water = %.1f cm',p1)
