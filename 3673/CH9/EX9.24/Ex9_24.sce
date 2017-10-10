//Example 9_24 page no:394
clc;
//given
Wr=-3000;//power in watts
Wy=8000;//power in watts
//calculating the input power
total_pow=Wr+Wy;
disp(total_pow,"the input power is (in watts)");
//the power factor at load
tan_phi=sqrt(3)*((Wr-Wy)/(Wr+Wy));
phi=atand(tan_phi);
pow_fac=cosd(phi);
disp(pow_fac,"the power factor at load is ");
