//Ex 6.1
clc;clear;close;
format('v',6);
theta1=30;//degree(Angle of incedence)
n1=1.5;//(refractive index for glass)
n2=1.36;//(refractive index for ethyl alcohol)
theta2=asind(n1*sind(theta1)/n2);//degree(Angle of refraction)
disp(theta2,"Angle of refraction(degree)");
