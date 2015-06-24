clc
clear
//Input data
dx=(0.1*10^-10)//The uncertainity in the position of the electron in m
h=(6.625*10^-34)//Plancks constant in Js

//Calculations
dp=(h/(2*3.14*dx))/10^-23//The uncertainity in the momentum of the electron located in kg m/s*10^-23

//Output
printf('The uncertainity in the momentum of the electron located is %3.3f*10^-23 kg m/s',dp)
