//Part B Chapter 2 Example 13
clc;
clear;
close;
format('v',6);
sigma1=70;//MN/m^2
sigma2=30;//MN/m^2
theta=20;//degree
sigma_n=(sigma1+sigma2)/2+(sigma1-sigma2)/2*cosd(2*theta);//MN/m^2
disp(sigma_n,"Value of sigma_n(tensile) in MN/m^2 : ");
sigma_t=(sigma1-sigma2)/2*sind(2*theta);//MN/m^2
disp(sigma_t,"Value of sigma_t(shear) in MN/m^2 : ");
sigmaR=sqrt(sigma_n^2+sigma_t^2);//MN/m^2
disp(sigmaR,"Value of sigma_R in MN/m^2 : ");
fi=atand(sigma_t/sigma_n);//degree
disp(fi,"Angle, fi in degree : ");
