clc;clear;
//Example 10.6

//given data
P1=10;
P2=500;
P3=500;
P4=15000;
P5=P4;
P6=4000;
P7=P5;
P8=P7;
P9=P7;
P10=P6;
P11=P10;
P12=P3;
P13=10;

//enthalpies at the various states and the pump work per unit mass of fluid flowing through them are
h1=191.81;
h2=192.30;
h3=640.09;
h4=643.92;
h5=1087.4;
h6=h5;
h7=1101.2;
h8=1089.8;
h9=3583.1;
h10=3155;
h11=3679.9;
h12=3014.8;
h13=2335.7;
wIin=0.49;
wIIin=3.83;
wIIIin=13.77;

//calculations
y=(h5-h4)/((h10-h6)+(h5-h4));
z=(1-y)*(h3-h2)/(h12-h2);
h8=(1-y)*h5+(y*h7);
qin=(h9-h8)+(1-y)*(h11-h10);
qout=(1-y-z)*(h13-h1);
nth=1-(qout/qin);
disp(y,'fraction of steam extracted from closed feedwater');
disp(z,'fraction of steam extracted from open feedwater');
disp(nth,'thermal efficiency is')
