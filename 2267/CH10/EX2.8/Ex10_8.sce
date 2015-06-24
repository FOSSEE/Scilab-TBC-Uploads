//Part B Chapter 2 Example 8
clc;
clear;
close;
format('v',6);
sigma_x=-150;//N/m^2
sigma_y=-100;//N/m^2
tau=-60;//N/mm^2
sigma1=(sigma_x+sigma_y)/2+sqrt((sigma_x-sigma_y)^2/4+tau^2);//N/mm^2
sigma2=(sigma_x+sigma_y)/2-sqrt((sigma_x-sigma_y)^2/4+tau^2);//N/mm^2
disp(sigma2,sigma1,"Two principle stresses(compressive) in N/mm^2 are : ");
tau_max=sqrt((sigma_x-sigma_y)^2/4+tau^2);//N/mm^2
disp(tau_max,"Maximum shear stress in N/mm^2 : ");
two_theta=atand(2*tau/(sigma_x-sigma_y));//degree
theta=[two_theta/2 (two_theta+180)/2];//degree
disp(theta,"Direction of principle stresses in degree is : ");
disp("Direction of maximum stress : 45 degree to principle plane. ");
