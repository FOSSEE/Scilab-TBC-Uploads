//Part B Chapter 2 Example 2
clc;
clear;
close;
format('v',6);
theta=25;//degree(angle with plane AB)
sigma_x=60;//N/mm^2
sigma_y=-90;//MN/m^2 or N/mm^2
sigma_n=(sigma_x+sigma_y)/2+(sigma_x-sigma_y)/2*cosd(2*theta);//N/mm^2
sigma_t=(sigma_x-sigma_y)/2*sind(2*theta);//N/mm^2
sigma=sqrt(sigma_n^2+sigma_t^2);//N/mm^2(Resultant stress)
fi=atand(sigma_n/sigma_t);//degree
disp(sigma_n,"Normal stress in N/mm^2 : ");
disp(sigma_t,"Tangential stress in N/mm^2 : ");
disp(fi,"Angle fi in degree : ");
disp(theta+fi,"Angle of resultant stress with plane AB will be theta+fi=");
