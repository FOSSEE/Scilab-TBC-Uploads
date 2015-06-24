//Calculate the max sag in still air and wind pressure
clear;
clc;
//soltion
//given
Wc=1.13;//kg/m//Line conductor weight
P=33.7//kg/m^2//Wind pressure
L=180;//meter//span of the line
fu=4220;//kg//Ultimate stress
sf=5;//safety factor
f=fu/sf;//kg//working stress
D=1.27;//cm//dia of copper
r=1.25;//cm//Radial thickness of ice
a=(%pi*D^2)/4;//cm^2//area of cross section
printf("Area of cross section= %3f cm^2\n",a);
T=f*a;//kg//max allowable tension
printf("Working tension= %.2f kg\n",T);
sag1= (Wc*L^2)/(8*T);//sag in still air
printf("Sag in sill air= %.2f m\n",sag1);
Wi=2890.3*r*(D+r)*10^-4;
printf("Weight of ice coating= %.2fkg\n",Wi);
Ww=P*(D+2*r)*10^-2;
printf("Wind force= %.5fkg\n",Ww);
Wr=sqrt((Wc+Wi)^2+Ww^2);
sag2= (Wr*L^2)/(8*T);//sag in wind + ice
printf("Max Sag= %.3f m\n",sag2);
