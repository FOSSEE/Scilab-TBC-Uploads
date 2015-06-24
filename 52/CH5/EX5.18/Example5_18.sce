//Example 5.18
//To Find out Bilinear Transformation of H(s)=(s^2+4.525)/(s^2+0.692*s+0.504)
clear;
clc ;
close ;
s=%s;
z=%z;
HS=(s^2+4.525)/(s^2+0.692*s+0.504);
T=1;
HZ=horner(HS,(2/T)*(z-1)/(z+1));
disp(HZ,'H(z) =');