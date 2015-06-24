clc
clear
//INPUT DATA
E=80*10^9//Young's modulus of material of piezo electric crystal in Pa
d=2654 //Density of material of piezo electric crystal in Kg/m^3
t=0.1*10^-2//Thickness of  piezo electric crystal in m
p=1//for fundamental first overtone

//CALCULATION
f=((p/(2*t))*(sqrt(E/d)))/10^6//Frequency of vibration of first overtone in Hz *10^6

//OUTPUT
printf('The frequency of vibration is %3.4f *10^6.Hz',f)
