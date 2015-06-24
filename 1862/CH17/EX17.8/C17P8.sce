clear
clc
//to find periods of oscillations

// GIVEN:
//refer to figure 17-11 from page no. 386
//mass of block
m = 250//in gram
//force constant
k = 85//in N/m
//damping constant
b = 0.070//in Kg/s

// SOLUTION
//using equation of damped oscillatory motion
//for small damping period
T = 2*%pi*(sqrt((m*10^-3)/k))//in seconds //taking m in Kg
//periods of oscillations
t = ((m*10^-3)*(log(2)))/b//in seconds //taking m in Kg

printf ("\n\n For small damping period T = \n\n %.2f seconds",T)
printf ("\n\n Periods of oscillations t = \n\n %.1f seconds",t)
