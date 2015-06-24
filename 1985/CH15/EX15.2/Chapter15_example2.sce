clc
clear
//Input data
s1=(405*10^6)//Principal stress in N/m^2
s2=(-105*10^6)//Principal stress in N/m^2

//Calculations
tmax=((s1-s2)/2)/10^6//Maximum shearing stress in N/m^2 *10^6

//Output
printf('The maximum shearing stress is %3.0f*10^6 N/m^2',tmax)
