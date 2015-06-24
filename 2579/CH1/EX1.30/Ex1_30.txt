//Ex:1.30
clc;
clear;
close;
Pr=15;// poynting vector in W/m^2
v=3*10^8;// average velocity ( the speed of light)
dav=Pr/v;// average energy density in W S/m^3 or J/m^3
dav1=dav*10^9;// average energy density in nJ/m^3
printf("The average energy density = %d nJ/m^3", dav1);