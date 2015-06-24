//Ex 9.7
clc;
s=%s;
T=10^(-4);
wdc=2*%pi*10^3;
wac=2/T*tan(wdc*T/2);
HS=1/(s^2+sqrt(2)*s+1)//Transfer Function for N=1
HS1=horner(HS,s/wac);
disp(HS1,'Normalized Transfer Function, H(s) =');
z=%z;
HZ=horner(HS1,(2/T)*(z-1)/(z+1));
disp(HZ,'H(z) =');