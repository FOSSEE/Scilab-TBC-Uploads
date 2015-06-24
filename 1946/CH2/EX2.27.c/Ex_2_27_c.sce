// Example 2.27.a:Numerical Aperture
clc;
clear;
close;
n1=1.5;//Core Refractive Index
n2=1.48;//Cladding Refractive Index
c=3*10^8;// Speed of ligh in m/s
a=50;//Core radius in micro meters
PB= (n1/n2)*((n1-n2)/c);// Pulse broadning per unit length
disp(PB,"Pulse broadning per unit length due to multipath dispersion in s/m")
