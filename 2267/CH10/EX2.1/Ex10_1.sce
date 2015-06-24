//Part B Chapter 2 Example 1
clc;
clear;
close;
format('v',6);
d=50;//mm(dimeter of bar)
F=120;//kN(Tensile force)
sigma_t=15;//MN/m^2(Tensile)
A=%pi*d^2/4;//mm^2
sigma_x=F/A*1000;//MN/m^2(tensile)
sigma_t_max=sigma_x/2;//MN/m^2
disp(sigma_t_max,"Maximum  shear stress in MN/m^2 : ");
two_theta=asind(sigma_t/(sigma_x/2));///degree
theta=[two_theta/2 (180-two_theta)/2];//degree
disp(theta,"Directions of plane in degree are : ");
sigma_n=sigma_x*cosd(theta)^2;//MN/m^2(Tensile)
disp(sigma_n,"Shear stress(tensile) in MN/m^2 for above angles are : ");
