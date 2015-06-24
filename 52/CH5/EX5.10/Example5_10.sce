//Example 5.10
//To Design a H.P.F. with given specifications
clear;
clc ;
close ;
ap=3;//db
as=15;//db
op=500;//rad/sec
os=1000;//rad/sec
N=log(sqrt((10^(0.1*as)-1)/(10^(0.1*ap)-1)))/log(os/op);
disp(ceil(N),'Order of the filter, N =');
s=%s;
HS=1/((s+1)*(s^2+s+1));//Transfer Function for N=3
oc=1000//rad/sec
HS1=horner(HS,oc/s);
disp(HS1,'Normalized Transfer Function, H(s) =');