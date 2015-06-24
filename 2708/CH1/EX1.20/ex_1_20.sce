//Example 1.20 // number of dark band
clc;
clear;
//given data :
t=0.01;//thickness of oil film
t=t*1D-3;//to convert in m
u=1.4;//refractive index of oil
w1=4D-7;// first wavelength in m
w2=5D-7;// second wavelength in m
a=%pi/4;//flim placed at angle
cosr=sqrt(1-(sin(a)/u)^2);//formula
n1=2*u*t*cosr/w1;
n2=2*u*t*cosr/w2;
n1=floor(n1);//to convert in integer
n2=floor(n2);//to convert in integer
n=n1-n2;//number of dark band
disp(n,"number of dark band")
