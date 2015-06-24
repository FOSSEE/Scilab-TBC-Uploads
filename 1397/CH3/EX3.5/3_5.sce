//clc();
clear;
//To determine reverberation time of the hall
V=1000;            //volume of hall in m^3
A1=400;            //area of wall in m^2
A2=100;            //area of floor in m^2
A3=100;            //area of ceiling in m^2
N=0.02;            //number of cushion chairs of wall 
a1=0.01;           //absorption coefficient of ceiling
a2=0.05;           //absorption coefficient of floor
a3=1.0;            //absorption coefficient of each cushion chair
T=(0.165*V)/((A1*N)+(A2*a1)+(A2*a2)+(A3*a3))
printf("reverberation time of the hall is %f sec",T);
