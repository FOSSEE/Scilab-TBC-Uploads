//Example 5.17
//To Design an H.P.F. monotonic in passband using Bilinear Transform
clear;
clc ;
close ;
ap=3;//db
as=10;//db
fp=1000;//Hz
fs=350;//Hz
f=5000;
T=1/f;
wp=2*%pi*fp;
ws=2*%pi*fs;
op=2/T*tan(wp*T/2);
os=2/T*tan(ws*T/2);
N=log(sqrt((10^(0.1*as)-1)/(10^(0.1*ap)-1)))/log(op/os);
disp(ceil(N),'Order of the filter, N =');
s=%s;
HS=1/(s+1)//Transfer Function for N=1
oc=op//rad/sec
HS1=horner(HS,oc/s);
disp(HS1,'Normalized Transfer Function, H(s) =');
z=%z;
HZ=horner(HS,(2/T)*(z-1)/(z+1));
disp(HZ,'H(z) =');