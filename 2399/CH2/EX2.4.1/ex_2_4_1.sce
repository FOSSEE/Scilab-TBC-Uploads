// Example 2.4.1:Numerical Aperture and critical angle
clc;
clear;
close;
n1=1.46;//refractive index
d=0.01;//difference
na=n1*sqrt(2*d);//numerical aperture
x=1-d;//
oc=asind(x);//in degree
disp(na,"numerical aperture is")
disp(oc,"critical angle at core cladding interface is ,(degree)=")
