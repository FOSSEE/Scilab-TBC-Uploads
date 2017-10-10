//Example 9_25 page no:395
clc;
//given
P=4488;//power in VAR
V=440;
I=17;
sin_phi=P/(V*I);
phi=asind(sin_phi);
pow_fac=cosd(phi);
disp(pow_fac,"the power factor of the load is ");
