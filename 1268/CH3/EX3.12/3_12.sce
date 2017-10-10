clc;
disp("Example 3.12")
radiusratio=0.2;
// From the appropriate equation we see the dependence of volumetric flow rate with radius
ratio=1-(0.2^4)+((1-(0.2^2))^2)/log(0.2);
disp("Q2/Q1= ");
disp(ratio);
