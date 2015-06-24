//Exam:7.2
clc;
clear;
close;
D=4*10^(-17);//diffusion coefficient of carbon in given steel in m2/s
c_s=3*10^26;//Surface concentration of boron atoms in the surface
c_1=0;//Initial uniform concentration of the element in the solid
c_x=10^23;//Concentration of the diffusing element at a distance x from thesurface
x=2*10^(-6);//depth from the surface in m
//(c_s-c_x)/(c_s-c_1)=erf(x/(2*(D*t)^(1/2)))
a=(erfinv((c_s-c_x)/(c_s-c_1)));
disp(a,'==')
t=(x^2/(D*4*(2.55)^2));//time required to get a boron content of 1023 atoms per m3 at a depth of 2 micro meter
disp(t,'time required to get a boron content of 1023 atoms per m3 at a depth of 2 micro meter(in sec)=');
disp((c_s-c_x)/(c_s-c_1));
T=(x/(2*(2.55)*D^(1/2)))^2;
disp(T,'==')