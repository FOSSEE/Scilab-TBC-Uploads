//Example 9_22 page no:391
clc;
//given data
Wr=400;//power in watts
Wy=-35;//power in  watts
//calculating total acitve power
T_active_pow=Wr+Wy;
disp(T_active_pow,"the total active power is (in watts)");
//calculting the power factor
phi=atand(sqrt(3)*((Wr-Wy)/(Wr+Wy)));
phi=cosd(phi);
disp(phi,"the power factor is");
//calculating the reactive power
rec_pow=sqrt(3)*(Wr-Wy);
disp(rec_pow,"the reactive power is (in VAR)");
