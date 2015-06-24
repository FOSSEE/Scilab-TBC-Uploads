//Part B Chapter 2 Example 10
clc;
clear;
close;
format('v',6);
sigma_x=60;//N/mm^2
sigma_y=30;//N/mm^2
tau=25;//N/mm^2
theta=45;//degree(Oblique plane angle)
sigma_n=(sigma_x+sigma_y)/2+(sigma_x-sigma_y)/2*cosd(2*theta)+tau*sind(2*theta);//N/mm^2
disp(sigma_n,"Value of sigma_n in N/mm^2 : ");
sigma_t=(sigma_x-sigma_y)/2*sind(2*theta)-tau*cosd(2*theta);//N/mm^2
disp(sigma_t,"Value of sigma_t in N/mm^2 : ");
sigmaR=sqrt(sigma_n^2+sigma_t^2);//N/mm^2(Resultant stress)
disp(sigmaR,"Value of sigma_R in N/mm^2 : ");
fi=atand(sigma_t/sigma_n);//degree(Angle of obliquity)
disp(fi,"Angle of obliquity in degree : ");
