//Problem on State Estimator Linear Model

clear
clc;
A=[-3.33 0;0 10;5 -5];
R=[10^-4 0 0;0 10^-4 0;0 0 10^-4];
O=inv(((A')*(inv(R))*(A)))*((A')*(inv(R))*[.12;.21;-.30]);//assuming theat matrix=0
f12=-3.33*(O(1,1));
f31=10*(O(2,1));
f23=5*(O(1,1)-O(2,1));
J=(((.12-f12)^2)+((.21-f31)^2)+((-.3-f23)^2))/(10^-4);
disp(O,"O=");//Answer does not match due to difference in rounding off of digits
disp(J,"J=");//Answer does not match due to difference in rounding off of digits

