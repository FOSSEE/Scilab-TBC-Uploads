// Example 2.25;Acceptance Angle
clc;
clear;
close;
NA=0.344;// Numerical Aperture
r= 50;// Angle at which angle changes for skew rays in degreee
m=cosd(r);
Oa=asind(NA);
disp(Oa,"Acceptance angle in degree is")
Oas=asind(NA/m)
disp(Oas," ACCEPTANCE ANGLE FOR SKEW RAYS IN DEGREE")
