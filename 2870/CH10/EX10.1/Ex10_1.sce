clc;clear;
//Example 10.1

//given data
P1=75;
P2=3000;//in kPa
P3=P2;
T3=350;
P4=P1;

//from steam tables
//at state 1
v1=0.001037;
h1=384.44;
//at state 3
h3=3116.1;
s3=6.7450;
//at state 4
s4=s3;
sf=1.2132;
sfg=6.2426;
hf=384.44;
hfg=2278;

//calculations
win=v1*(P2-P1);
h2=h1+win;
x4=(s4-sf)/sfg;
h4=hf+x4*hfg;
qin=h3-h2;
qout=h4-h1;
nth=1-(qout/qin);
disp(nth*100,'thermal efficency % is')
