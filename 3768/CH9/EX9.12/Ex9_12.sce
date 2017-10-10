//Example number 9.12, Page number 208

clc;clear;
close;

//Variable declaration
n=5*10**17;     //concentration(m**3)
vd=350;    //drift velocity(m/s)
E=1000;    //electric field(V/m)
e=1.6*10**-19;     //charge(c)
//Calculation
sigma=n*e*vd/E;    //conductivity(per ohm m)
//Result
printf("conductivity is %.3f per ohm-m",sigma)
