clc
//initialisation of variables
clear
k1= 6.45//cal deg^-1 mol^-1
k2= 1.41*10^-3 //cal deg^-2 mol^-1
k3= -0.81*10^-7 //cal deg^-3 mol^-1
T= 300 //K
k4= -0.21*1.36 //cal deg^-3 mol^-1 atm^-1
k5= 6.87*1.5//cal deg^-3 mol^-1 atm^-2
p= 10^-3
//CALCULATIONS
Cp= k1+k2*T+k3*T^2
dCp= k2+2*k3*T
dCp1= k4*p+k5*p
//RESULTS
printf ('Cp = %.2f cal deg^-1 mole^-1',Cp)
printf ('\n Specific heat at temperature = %.2e cal deg^-2 mole^-1',dCp)
printf ('\n Specific heat at pressure = %.2e cal deg^-2 mole^-1 atm^-1',dCp1)
