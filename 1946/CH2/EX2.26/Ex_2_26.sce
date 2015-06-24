// Example 2.26:Number of guided modes
clc;
clear;
close;
n1=1.5;//Core Refractive Index
d= 0.013;// Cange in core-cladding refractive index
alpha=1.90;//  index profile
a=20;//Core radius in micro meters
h=1.55;//wavelngth in micro meters
Mg= round((alpha/(alpha+2))*((n1*2*%pi*a)/h)^2 *d);
Vc=2.405*sqrt(1+2/alpha);
disp(Mg,"Number of guided modes are")
disp(Vc," normalised frequency")

