clc
//initialisation of variables
clear
R= 4.576 //cal mole^-1 K^-1
T= 25 //C
p1= 122 //mm
F1= -5.88 //kcal
F2= -33 //kcal
//CALCULATIONS
dF= R*(273.2+T)*log10(p1/760)
F= F2+F1+(dF/1000)
//RESULTS
printf ('Standard free energy change = %.f kcal',F)
