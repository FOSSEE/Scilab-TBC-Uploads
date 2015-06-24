clc
clear
//Input data
r=10^-14//Radius of the nucleus in m
m=(1.67*10^-27)//Mass of the proton in kg
h=(6.625*10^-34)//Plancks constant in Js

//Calculations
x=6.24150934*10^12//1 Joule  in MeV
dp=(h/(2*3.14*r))/10^-20//The uncertainity in the momentum of the proton in kg m/s *10^-20
ke=((dp*10^-20)^2/(2*m))*x//Minimum kinetic energy of the proton in MeV

//Output
printf('The uncertainity in the momentum of the proton is %3.3f*10^-20 kg m/s \n Minimum kinetic energy of the proton is %3.3f MeV',dp,ke)

