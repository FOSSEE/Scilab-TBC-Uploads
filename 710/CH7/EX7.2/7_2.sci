clc();
clear;
//To determine the vertical displacement of electron
m=9.1*10^-31;                            //mass of electron
vx=4*10^6;                               //velocity along x-axis
E=1500;                                  //electric field strength
l=0.07;                                  //length in y-axis
q=1.6*10^-19;                            //charge of electron
y=(-q*E*(l^2))/(2*m*(vx^2))*10^2         //vertical displacement of electron
printf("The vertical displacement of electron when it leaves the electric field is %f cm",y);