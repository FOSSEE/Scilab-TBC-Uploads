clear all;
clc;
funcprot(0);

//function to calculate m and delta
function [m,delta] = func(a_l,alpha2,theta)
    m = 0.23*(2*a_l)^2 + alpha2/500;
    delta = m*theta;
endfunction

//given data
alpha1_ = 50;// in deg
alpha2_ = 20;// in deg
a_l = 0.5;//percentage
s_l = 1.0;
eps = 21;//in deg

//Calculations
theta = alpha1_ - alpha2_;
alpha21 = 20;//in deg
[m1,delta1] = func(a_l,alpha21,theta);
alpha22 = 28.1;//in deg
[m2,delta2] = func(a_l,alpha22,theta);
alpha23 = 28.6;//in deg
[m3,delta3] = func(a_l,alpha23,theta);
alpha1 = eps + alpha23;
i = alpha1 - alpha1_;
alpham = (180/%pi)*atan(0.5*(tan(alpha1*%pi/180) + tan(alpha23*%pi/180)));
CL = 2*(s_l)*cos(alpham*%pi/180)*(tan(alpha1*%pi/180) - tan(alpha23*%pi/180));

//Results
printf('The fluid deflection = %d deg.',eps);
printf('\n The fluid deviation = %.1f deg.',i);
printf('\n The ideal lift coefficient at the design point = %.2f',CL);
