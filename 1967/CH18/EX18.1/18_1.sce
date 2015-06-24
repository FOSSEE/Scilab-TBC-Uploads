clc
//initialisation of variables
clear
k1= 16.4 //ml mole^-1
k2= 2.5 //ml mole^-2
k3= -1.2 //ml mole^-3
m= 1 //molal
//CALCULATIONS
Ov= k1+k2*m+k3*m^2
//RESULTS
printf ('Apparent molar volume = %.1f ml mole^-1',Ov)
