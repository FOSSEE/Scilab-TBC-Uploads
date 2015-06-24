//Chapter 6,Problem 2
clc;
I=4;                    //Current in ampere
t=3*10^-3;              //time in seconds
C=20*10^-6;             //Capacitance in farad
Q=I*t;                  //Calculating Charge
V=Q/C;                  //Calculating voltage
printf("p.d. between the plates = %f V",V);
