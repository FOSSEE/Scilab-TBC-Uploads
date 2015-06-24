clc;clear;
//Example 7.20

//given data
P=20;
T1=50+460;//in R
T2=240;
T3=130;
m1=300;
Qout=180;

//from steam tables
//at P and T1
h1=18.07;
s1=0.03609;
//at P and T2
h2=1162.3;
s2=1.7406;
//at P and T3
h3=97.99;
s3=0.18174;

//calculations
// Qout = m1*h1 + m2*h2 - (m1+m2)*h3
m2= (Qout-m1*h1+m1*h3)/(h2-h3);
m3=m1+m2;
// Sin - sout + Sgen = dSsystem/dt
Sgen=m3*s3-m1*s1-m2*s2+Qout/T1;
disp(Sgen,'the rate of entropy generation in Btu/min R')
