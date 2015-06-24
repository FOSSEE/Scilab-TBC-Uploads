//Example 2.1
//State of Stress in two dimensions
//Page No. 25
clc;clear;close;

sigma_x=25;           //no unit
sigma_y=5;             //no unit
theta=45;               //in degrees
sigma_x_=50;            //in Mpa
T_x_y_=5;              //in Mpa
A=[(sigma_x+sigma_y)/2+(sigma_x-sigma_y)/2*cosd(2*theta),sind(2*theta);(sigma_y-sigma_x)/2*sind(2*theta),cosd(2*theta)];
B=[sigma_x_;T_x_y_];
X=inv(A)*B;
p=X(1);
T_xy=X(2);
sigma_x1=sigma_x*p;
sigma_y1=sigma_y*p;
sigma_y_=sigma_x1+sigma_y1-sigma_x_;
printf('\nsigma_x= %g MPa\nsigma_y= %g MPa\nT_xy= %g MPa\nsigma_y`= %g MPa',sigma_x1,sigma_y1,T_xy,sigma_y_);
