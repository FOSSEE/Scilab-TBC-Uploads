clc;clear;
//Example 10.5

//given data
P1=10;
P2=1200;
P3=1200;
P4=15000;
P5=15000;
T5=600;
P6=1200;
P7=10;

//from steam table
//at state 1
h1=191.81;
v1=0.00101;
//at state 3
h3=798.33;
v3=0.001138;
//at state 4
h4=3155;
T4=375.5;
//at state 5
h5=3583.1;
s5=6.6796;
//at state 6
h6=2860.2;
T6=218.4;
//at state 7
P7=10;
sf=0.6492;
sfg=7.4996;
hf=191.81;
hfg=2392.1;

//calculations
//s2 = s1
win=v1*(P2-P1);
h2=h1+win;
//s4 = s3
win=v3*(P4-P3);
h4=h3+win;
s7=s5;
x7=(s7-sf)/sfg;
h7=hf+(x7*hfg);
//y is the fraction of steam extracted from the turbine
y=(h3-h2)/(h6-h2);
qin=h5-h4;
qout=(1-y)*(h7-h1);
nth=1-(qout/qin);
disp(y,'fraction of steam extracted');
disp(nth,'thermal efficiency is')
