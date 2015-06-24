clc;clear;
//Example 10.4

//given data
P1=10;
P2=15000;
P3=15000;
T3=600;
P4=4000;
T5=600;
P6=10;
x6=0.896;

//from steam table
//at state 1
h1=191.81;
v1=0.00101;
//at state 3
h3=3593.1;
s3=6.6796;
//at state 4
h4=3155;
T4=375.5;
//at state 6
sf=0.6492;
sfg=7.4996;
hf=191.81;
hfg=2392.1;

//calculations
s6=sf+x6*sfg;
h6=hf+x6*hfg;
//s5 = s6
//from tables
P5=4000;//in kPa
h5=3674.9;
disp(P5/1000,'the pressure at which the steam should be reheated in MPa');
//s2 = s1
win=v1*(P2-P1);
h2=h1+win;
qin=(h3-h2)+(h5-h4);
qout=h6-h1;
nth=1-(qout/qin);
disp(nth,'thermal efficiency is')
