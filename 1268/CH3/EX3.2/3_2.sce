clc;
disp("Example 3.2")
// the formula used is u=2U(1-(r/R)^2)
// In the first part u=U/2 and in second part u=U
// first step
//(r/R)^2=3/4
R=5; // in cm
r1=5*((0.75)^0.5);
// second step
// (r/R)^2=1/2
r2=5*((0.5)^0.5);
disp(" At r= ")
disp(r1)
disp(" cm we have half the avergae velocity and at r= ")
disp(r2)
disp(" we have axial velocity equal to avergae velocity.")
