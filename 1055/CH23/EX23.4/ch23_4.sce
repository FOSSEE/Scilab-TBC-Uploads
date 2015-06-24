//Determine theta1 Theta2
clear
clc;
A=[5 -5;2.5 0;4 -4];
R=[10^-4 0 0;0 10^-4 0;0 0 10^-4];
O=inv(((A')*(inv(R))*(A)))*((A')*(inv(R))*[.60;.05;.35]);//assuming theat matrix=0
f12=5*(O(1,1)-O(2,1));
f13=2.5*(O(1,1));
f32=-4*(O(2,1));
J=(((.6-f12)^2)+((.05-f13)^2)+((.35-f32)^2))/(10^-4);
//Answer does not match due to difference in rounding off of digits
disp(O(1,1),"Theta1=");
disp(O(2,1),"Theta2=");

