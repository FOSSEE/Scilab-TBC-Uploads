clc();
clear;
//To calculate the seperation on photographic plate
E=2.5*10^4;                           //electric field
B=0.18;                               //magnetic field
v=E/B;                                //velocity of particles
B1=0.22;                              //magnetic field in the main chamber
m2=13;                                //mass number of carbon
m1=12;                                //mass number of carbon
e=1.6*10^-9;
s=((2*v*(m2-m1)*1.67*10^-27)/(e*B1))*10^12
printf("the seperation on photographic plate is %f cm",s);