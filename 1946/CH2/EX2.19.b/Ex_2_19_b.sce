// Example 2.19.b:Acceptance Angle
clc;
clear;
close;
n1=1.55;//cORE Refractive Index
n2=1.51;//Cladding Refractive Index
NA=sqrt(n1^2-n2^2);// Numerical Aperture
Om= asind(NA);
disp(Om,"Acceptance Angle in degree is")
