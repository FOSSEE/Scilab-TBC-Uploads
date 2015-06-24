//Chapter 21, Problem 12
clc;
v1=4500;                        //primary voltage
v2=225;                         //secondary voltage
f=50;                           //frequency
en=15;                          //e.m.f. per turn
B=1.4;                          //maximum core flux density
n1=v1/en;                       //primary turns
n2=v2/en;                       //secondary turns
phim=v1/(4.44*f*n1);            //maximum flux
A=phim/B;                       //effective core cross-sectional area
printf("(a) Primary turns = %f\n\nSecondary turns = %f\n\n\n",n1,n2);
printf("(b) cross-sectional area of the core = %f m2",A);
