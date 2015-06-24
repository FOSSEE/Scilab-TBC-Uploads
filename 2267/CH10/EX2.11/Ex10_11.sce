//Part B Chapter 2 Example 11
clc;
clear;
close;
format('v',6);
sigma1=125;//N/mm^2(Tenslie)
sigma2=65;//N/mm^2(Tensile)
tau=0;//N/mm^2
theta=30;//degree
sigma_n=(sigma1+sigma2)/2+(sigma1-sigma2)/2*cosd(2*theta)+tau*sind(2*theta);//N/mm^2
disp(sigma_n,"Value of sigma_n in N/mm^2 : ");
sigma_t=(sigma1-sigma2)/2*sind(2*theta)-tau*cosd(2*theta);//N/mm^2
disp(sigma_t,"Value of sigma_t in N/mm^2 : ");
sigmaR=sqrt(sigma_n^2+sigma_t^2);//N/mm^2
disp(sigmaR,"Value of sigma_R in N/mm^2 : ");
fi=atand(sigma_t/sigma_n);//degree
disp(fi,"Angle, fi in degree : ");
