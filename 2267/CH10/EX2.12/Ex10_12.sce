//Part B Chapter 2 Example 12
clc;
clear;
close;
format('v',6);
sigma_y=0;//N/m^2
theta=30;//degree
A=450*10^-6;//m^2
F=-100;//kN
sigma_x=F/A/1000;//MN/m^2
sigma_n=(sigma_x+sigma_y)/2+(sigma_x-sigma_y)/2*cosd(2*theta);//MN/m^2
disp(sigma_n,"Value of sigma_n(compressive) in MN/m^2 : ");
sigma_t=(-sigma_x-sigma_y)/2*sind(2*theta);//MN/m^2
disp(sigma_t,"Value of sigma_t in MN/m^2 : ");
sigmaR=sqrt(sigma_n^2+sigma_t^2);//N/mm^2
disp(sigmaR,"Value of sigma_R(compressive) in N/mm^2 : ");
fi=atand(sigma_t/-sigma_n);//degree
disp(fi,"Angle, fi in degree : ");
tau_max=(-sigma_x-sigma_y)/2;//MN/m^2
disp(tau_max,"Maximum shear stress in MN/m^2 : ");
