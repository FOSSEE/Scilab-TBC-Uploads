// Exa 5.7
clc;
clear;
close;
// given data 
fo=50;//in KHz
d=75/100;//unitless
C=1;//in nF
disp("RA+2RB=1/(0.693*fo*10^3*C*10^-9);// in Kohm");
disp("RA+2RB=28.9 Kohm");
disp("d=0.75=(RA+RB)/(RA+2*RB)");
disp("It gives RA=2*RB");
RA=28.9/2;// in Kohm
RB=RA/2;//in Kohm
disp(RA,"Value of RA in Kohm is :")
disp(RB,"Value of RB in Kohm is :");