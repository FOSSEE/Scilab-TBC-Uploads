clc
//initialisation of variables
clear
T= 25 //C
dF1= 61.44 //kcal
dF= 54.65 //kcal
R= 4.576 //cal deg^-1 mole^-1
//CALCULATIONS
Kf= 10^(-(dF1-dF)*10^3/(R*(273.2+T)))
//RESULTS
printf ('Kf at this temperature = %.2e ',Kf)
