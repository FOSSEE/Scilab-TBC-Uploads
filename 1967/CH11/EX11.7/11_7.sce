clc
//initialisation of variables
clear
T= 40 //C
T1= 80.1 //C
//CALCULATIONS
H= 2*(273.2+T1)
p= %e^(-(H/(4.576*(273.2+T)))+4.59)/3.07
//RESULTS
printf ('vapour pressure = %.1f cm',p)
