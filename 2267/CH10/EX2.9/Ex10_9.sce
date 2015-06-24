//Part B Chapter 2 Example 9
clc;
clear;
close;
format('v',6);
sigma1=200;//N/m^2
sigma2=-80;//N/m^2
theta_dash=60;//degree
theta=90-theta_dash;//degree
sigma_n=(sigma1+sigma2)/2+(sigma1-sigma2)/2*cosd(2*theta);//N/mm^2
sigma_t=(sigma1-sigma2)/2*sind(2*theta);//N/mm^2
sigmaR=sqrt(sigma_n^2+sigma_t^2);//N/mm^2
disp(sigmaR,"Resultant stress in N/mm^2 : ");
fi=atand(sigma_t/sigma_n);//degree
disp(fi,"Direction of resultant stress in degree : ");
tau_max=(sigma1-sigma2)/2;//N/mm^2
disp(tau_max,"Maximum shear stress in N/mm^2 : ");
