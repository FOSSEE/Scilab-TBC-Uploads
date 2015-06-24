//Part B Chapter 2 Example 7
clc;
clear;
close;
format('v',6);
sigma1=600;//N/m^2(major)
sigma_x=450;//N/m^2
sigma_y=0;//N/m^2
tau=sqrt((sigma1-(sigma_x+sigma_y)/2)^2-(sigma_x-sigma_y)^2/4);//N/mm^2
disp(tau,"Maximum value of tau in N/mm^2 : ");
sigma2=(sigma_x+sigma_y)/2-sqrt((sigma_x-sigma_y)^2/4+tau^2);//N/mm^2
disp(sigma2,"Minimum principle stress(compressive) in N/mm^2 : ");
