clc;clear;
//Example 9.7

//from 9.6
h2a=605.39;
h4a=880.36;
h3=1395.97;
Wnet=210.41;

//given data
n=0.80;

//calculations
// n = (h5 - h2a) / (h4a - h2a)
h5=(h4a - h2a)*n+h2a;
qin=h3-h5;
nth=Wnet/qin;
disp(nth,'thermal efficiency is')
