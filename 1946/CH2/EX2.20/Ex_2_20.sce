// Example 2.20:Normaised Frequency
clc;
clear;
close;
n1=1.45;//Core Refractive Index
NA=0.16;//Numerical Aperture
a=30;// core radius in micro meters
h=0.1;//wavelngth in micro meters
v=(2*%pi*a*NA)/h;//Normalised wavelngth
disp(v,"normalised frequency ")
