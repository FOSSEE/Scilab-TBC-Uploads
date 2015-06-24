//Chapter 21, Problem 11
clc;
f=50;                           //frequency
v1=500;                         //primary voltage
v2=100;                         //secondary voltage
B=1.5;                          //maximum core flux density
A=50e-4;                        //effective core cross-sectional area
phim=B*A;                       //maximum flux
n1=v1/(4.44*f*phim);            //primary turns
n2=v2/(4.44*f*phim);            //secondary turns
printf("Primary turns = %d turns\n\n",n1);
printf("Seconadry turns = %d turns\n\n",n2);
