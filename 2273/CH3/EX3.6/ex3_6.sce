//Calculate the max sag
clear;
clc;
Wc=.85;//kg/m//Line conductor wieght
L=275;//meter//span of the line
U=8000;//kg//Ultimate strength
sf=2;//safety factor
P=39;//kg/m^2//Wind pressure
T=U/sf;//kg//max allowable tension
D=19.5;//mm//dia of copper
r=13;//cm//Radial thickness of ice
Wi=910*%pi*r*(D+r)*10^-6;
Ww=P*(D+2*r)*10^-3;//Wind force/m lenght
Wr=sqrt((Wc+Wi)^2+Ww^2);//resultant sag
sag= (Wr*L^2)/(8*T);//sag in wind + ice
printf("Max Sag= %.3f m\n",sag);
