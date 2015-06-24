//Example 5.16
//To Find out Bilinear Transformation of HS=2/((s+1)*(s+2))
clear;
clc ;
close ;
s=%s;
z=%z;
HS=2/((s+1)*(s+2));
T=1;
HZ=horner(HS,(2/T)*(z-1)/(z+1));
disp(HZ,'H(z) =');