//example 7.17

clear;
clc;

//Given:
T=298;//Temperature[K]
m1=32;
m2=36;
m3=34;
u1=8;
u2=9;
u3=16*18/34;
z1=0.99924;
z2=0.99951;
z3=0.99940;
h=6.26*10^-27;//Planck's constant[J.s]
c=3*10^10;//Speed of light[m/s]
k=1.38*10^-16;//Boltzman's constant[erg/K]
vo1=1535.8;//vibration frequency of 16O18O [cm-1]
vo2=1580.4;//vibration frequency of 16O2 [cm-1]
vo3=1490.0;//vibration frequency of 18O2 [cm-1]
dE=0.5*h*c*(2*vo1-vo2-vo3);//[erg]
r=dE/k/T;


//To find the equilibrium constant for isotopic exchange reaction
a=m3^3/m2^1.5/m1^1.5;
b=(u3^2)*4/u2/u1;
c=z3^2/z2/z1;
Kp=a*b*c*exp(-r);
printf("The value of equilibrium constant for isotopic exchange reaction is %f",Kp);