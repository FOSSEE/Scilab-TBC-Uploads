//Ex 2.8 page 72

clc;
clear;
close;

IS1=100;// A
IS2=150;// A
vd1=2.1;// V
vd2=1.75;// V
I=250;// A

rf1=vd1/IS1;// ohm
rf2=vd2/IS2;// ohm
// Equating voltage drops
// vd1+IS1*re = vd2+IS2*re
re=(vd1-vd2)/(IS2-IS1)
printf(' Series resistance = %.3f ohm',re)

