//Example 9_23 page no:392
clc;
//given
input_pow=10*10^3;
pow_fac=0.8;//power factor
phi=acosd(pow_fac);
tan_phi=tand(phi);
Wr_Wy=tan_phi*(input_pow)/sqrt(3);
A=[1,1,
-1,1];
B=[10,
4.33];
x=inv(A)*B;
disp(x(1),"the power in lower reading wattmeter is (in kW)");
disp(x(2),"the power in higher reading wattmeter is (in kW)");
