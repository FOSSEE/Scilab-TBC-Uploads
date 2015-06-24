clear;
clc;

//page no. 225

nu = 0.00001;// sqft/sec
d = 1;//in
R_c = 2100;
V = R_c*nu/(d/12);
Q = V*0.25*%pi*(d/12)^2;
printf('Q = %.6f cfs',Q);
