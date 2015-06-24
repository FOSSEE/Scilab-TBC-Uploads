//Chapter 6, Problem 4
clc;
l=20*10^-2;
b=40*10^-2;
Q=0.2*10^-6;                //Charge
V=0.25*10^3;                //Voltage
d=5*10^-3;                  //Distance between plates
A=l*b;                      //Calculating area of restangular plated
D=Q/A;                      //Calculating electric flux density
E=V/d;                      //Calculating electric field strength
printf("Electric fulx density D = %f C/m2 \n\n\n",D);
printf("Electric field strength E = %f V/m",E);
