clc
clear
//Input data
t=0.005//Length of the crystal in m
Y=(7.9*10^10)//Youngs modulus in N/m^2
d=2650//Density in kgm^3

//Calculations
f1=((1/(2*t))*sqrt(Y/d))/10^5//Fundamental vibration in Hz *10^5
f2=2*f1/10//Frequency of first overcome in Hz *10^6 

//Output
printf('The frequency of the fundamental note is %3.2f *10^5 Hz \n The first overtone emitted by a piezoelectric crystal is %3.3f *10^6 Hz',f1,f2)
