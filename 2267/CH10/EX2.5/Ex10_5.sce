//Part B Chapter 2 Example 5
clc;
clear;
close;
format('v',6);
sigma1=100;//N/m^2
sigma2=-50;//N/m^2
tau=0;//N/mm^2
theta=60;//degree
sigma_n=(sigma1+sigma2)/2+(sigma1-sigma2)/2*cosd(2*theta);//N/mm^2
sigma_t=(sigma1-sigma2)/2*sind(2*theta);//N/mm^2
sigma=sqrt(sigma_n^2+sigma_t^2);//N/mm^2
disp(sigma_n,"Value of sigma_n(compressive) in N/mm^2 : ");
disp(sigma_t,"Value of sigma_t in N/mm^2 : ");
disp(sigma,"Value of resultant stress in N/mm^2 : ");
alfa=1/2*asind(-(sigma1+sigma2)/2/sqrt((sigma1-sigma2)^2/4))-45;//degree
disp("Plane of whole shear is "+string(alfa)+" degree with plane AD");
sigma_t_alfa=(sigma1-sigma2)/2*sind(2*alfa)-tau*cosd(2*alfa);//N/mm^2
disp(sigma_t_alfa,"Value of shear stresses at this plane in N/mm^2 : ");
