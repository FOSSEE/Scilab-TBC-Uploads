//Calculate horizontal component of tension and max sag
clear;
clc;
//soltion
//given
W=750;//kg/km//Line conductor weight
L=300;//meter//span of the line
T=3400;//kg//max allowable tension
w=W/1000;//kg/m//Weight of conductor in meter
printf("Max sag= (W*L^2)/(8*Th)\n");
x= (w*L^2)/(8);
printf("Sag= %.1f/Th\n\n",x);
printf("Max tension= Th + wS\n");
Th=(T+sqrt(T^2+4*w*x))/2;
printf("Horizontal component of tension (Th)= %.3f kg\n",Th);
sag= (w*L^2)/(8*Th);
printf("Sag= %.3f m\n",sag);
y=sag/2;
z=sqrt((2*Th*y)/w);
printf("Point at which sag will be half= %.3f m\n", z);
//THERE IS TYPOGRAPHICAL ERROR IN BOOK DUE TO THAT THERE IS A VARIATION
//IN BOOK Th=3448.191 kg
//MAX SAG=2.446 m
//Point at which sag will be half= 106.045 m
