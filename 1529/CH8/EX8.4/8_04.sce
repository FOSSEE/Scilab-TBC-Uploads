//Chapter 8, Problem 4
clc;
l=350*10^-3;                        //length of conductor
I=10;                               //current
r=0.06;                             //radius of pole
phi=0.5*10^-3;                      //flux
A=%pi*r^2;                          //area of pole
B=phi/A;                            //calculating flux density
F=B*I*l;                            //calculating force
printf("Force = %f N",F);
