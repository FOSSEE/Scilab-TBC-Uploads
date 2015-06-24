//Part B Chapter 2 Example 4
clc;
clear;
close;
format('v',6);
sigma_x=120;//N/mm^2(Tensile)
sigma_y=-90;//N/mm^2(Compressive)
sigma1=150;//N/mm^2(Principle stress: major)
tau=sqrt((sigma1-(sigma_x+sigma_y)/2)^2-(sigma_x-sigma_y)^2/4);//N/mm^2(Shear stress)
disp(tau,"Value of shear stress in N/mm^2 : ");
