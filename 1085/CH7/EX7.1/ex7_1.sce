//Exam:7.1
clc;
clear;
close;
D=1.28*10^(-11);//diffusion coefficient of carbon in given steel in m2/s
c_s=0.9;//Surface concentration of diffusion element in the surface
c_o=0.2;//Initial uniform concentration of the element in the solid
c_x=0.4;//Concentration of the diffusingelement at a distance x from thesurface
x=0.5*10^(-3);//depth from the surface in m
//(c_s-c_x)/(c_s-c_o)=erf(x/(2*(D*t)^(1/2)))
t=(x/(2*erfinv((c_s-c_x)/(c_s-c_o))*D^(1/2)))^2;//time required for carburization(in sec)
disp(t,'time required for carburization(in sec)=');