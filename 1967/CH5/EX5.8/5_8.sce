clc
//initialisation of variables
clear
dH= 31.39 //kcal
k1= 3.397*10^-3 //kcal K^-1
k2= -1.68*10^-6 //kcal K^-2
k3= -0.022*10^-9 //kcal K^-3
k4= 1.17*10^2 //kcal K
T= 25 //C
//CALCULTIONS
H= dH-(k1*(273+T)+k2*(273+T)^2+k3*(273+T)^3+k4*(273+T)^-1)
//RESULTS
printf ('Change in enthalpy= %.2f kcal',H)
