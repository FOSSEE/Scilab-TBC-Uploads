// Example 2.12;Acceptance Angle
clc;
clear;
close;
NA=0.4;// Numerical Aperture
r= 50;// Angle at which angle changes for skew rays in degreee
m=cosd(r);
Oas=asind(NA/m)
disp(Oas," ACCEPTANCE ANGLE FOR SKEW RAYS IN DEGREE")
