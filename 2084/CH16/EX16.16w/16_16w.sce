//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 16.16w
//calculation of the speed,wavelength in the rod,frequency,wavelength in the air

//given data
l=90*10^-2//length(in m) of the rod
rho=2600//density(in kg/m^3) of the aluminium
Y=7.80*10^10//Young modulus(in N/m^2)
vai=340//speed(in m/s) of the sound in the air

//calculation
v=sqrt(Y/rho)//speed of the sound in aluminium
lambda=2*l//wavelength....since rod vibrates with fundamental frequency
nu=v/lambda//frequency
lambdaai=vai/nu//wavelength in the air

printf('the speed of the sound in aluminium is %d m/s',v)//Textbook Correction : correct answer is 5477 m/s
printf('\nthe wavelength of the sound in aluminium rod is %d cm',lambda*10^2)
printf('\nthe frequency of the sound produced is %d Hz',nu)//Textbook Correction : correct answer is 3042 Hz
printf('\nthe wavelength of the sound in air is %3.1f cm',lambdaai*10^2)
