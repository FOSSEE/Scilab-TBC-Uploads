//Example 5.4
//To Design an Analog Butterworth Filter
clear;
clc ;
close ;
ap=2;//db
as=10;//db
op=20;//rad/sec
os=30;//rad/sec
N=log(sqrt((10^(0.1*as)-1)/(10^(0.1*ap)-1)))/log(os/op);
disp(ceil(N),'Order of the filter, N =');
s=%s;
HS=1/((s^2+0.76537*s+1)*(s^2+1.8477*s+1));//Transfer Function for N=4
oc=op/(10^(0.1*ap)-1)^(1/(2*ceil(N)));
HS1=horner(HS,s/oc);
disp(HS1,'Normalized Transfer Function, H(s) =');