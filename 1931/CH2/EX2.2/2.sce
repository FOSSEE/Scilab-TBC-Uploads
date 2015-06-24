clc
clear
//INPUT DATA
v=5.5*10^3//Velocity of longitudanal waves in Quartz Crystal in m/s
t=0.05//Thickness of Quartz Crystal in m

//CALCULATION
w=2*t//wavelength in m
v1=(v/w)/10^4//Frequency in the first mode of vibration in Hz *10^4
v2=(2*v1)/(10^-4*10^3)//Frequency in the second mode of vibration in Hz *10^3

//OUTPUT
printf('Frequency in the first mode of vibration is %3.1f *10^4.Hz \n Frequency in the second mode of vibration is %i *10^3.Hz',v1,v2)
