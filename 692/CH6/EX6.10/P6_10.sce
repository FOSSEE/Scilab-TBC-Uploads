//EXAMPLE 6.10
//Z-transform from pole-zero locations
clc;
clear;
z=%z;
//using the pole & zero locations provided
num=(z-0.21)*(z-3.14)*(z-(-0.3+%i*0.5))*(z-(-0.3-%i*0.5));
den=(z+0.45)*(z-0.67)*(z-(0.81+%i*0.72))*(z-(0.81-%i*0.72));
k=2.2;
Gz=(num/den);
disp(k*Gz,'Gz  =  ');
