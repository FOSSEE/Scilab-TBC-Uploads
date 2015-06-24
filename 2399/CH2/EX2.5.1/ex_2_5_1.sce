// Example 2.5.1:Numerical Aperture ,critical angle and acceptance angle
clc;
clear;
close;
n2=1.45;//core refrative index
n1=1.49;//cladding refrative index
oc=asind(n2/n1);//in degree
na=sqrt(n1^2-n2^2);//numerical aperture
pc=asind(na);//degree
disp(oc,"critical angle is,(degree)=")
disp(na,"numerical aperture is,=")
disp(pc,"acceptance angle is,(degree)=")
