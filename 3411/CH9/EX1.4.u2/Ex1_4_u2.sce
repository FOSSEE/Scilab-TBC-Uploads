//Example 1_4_u2
clc();
clear;
//To find out the no of states that can accomodate
h=6.63*10^-34            //units in m^2 kg s^-1
m=9.1*10^-31         //units in Kgs
l=0.5           //units in nm
l=l*10^-9           //units in meters
v=15        //units in eV
v=v*1.6*10^-19          //units in Volts
nmax=(4*l*sqrt(m*v))/h
printf("The maximum quantum number possible is n=%d",nmax)
