//Determine Sag & Tension under erection conditions
clear;
clc;
//soltion
//given
W=.9;//kg/m//Line conductor wieght
L=300;//meter//span of the line
a=2.40*10^-4//m^2//area
D=19.5//mm//diameter
U=8000;//kg//Ultimate strength
sf=2;//safety factor
P=38.5;//kg/m^2//Wind pressure
T1=U/sf;//kg//max allowable tension
E=9320*10^6;//kg/m^2//Young's Modulus
alp=18.44*10^-6;//1/°C//Linear expansion
t1=5//°C//temperature under normal condition
t2=35//°C//temperature under worst condition
dt=t2-t1;//°C//difference in temperature
f1=T1/a;
Ww=P*(D)*10^-3;//weight due to wind
printf("Wind force= %.2fkg\n",Ww);
Wr=sqrt(W^2+Ww^2);//resultant weight
C1=W^2*L^2*E/(24*a^2);
C2=-f1+Wr^2*L^2*E/(24*f1^2*a^2)+dt*alp*E;
p=poly([-C1 0 C2 1], 'f2', 'c');
r=roots(p);
f2= 11951292;//accepted value of f2
sag=(W*L^2)/(8*f2*a);
printf("Sag at erection= %.3fm",sag);
//The book has used in correct value of f2 and in it the sag is 2.121m
