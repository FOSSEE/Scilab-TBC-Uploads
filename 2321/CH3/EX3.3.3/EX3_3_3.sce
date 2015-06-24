//Example No. 3.3.3
clc;
clear;
close;
format('v',7);
E_theta=1/sqrt(2);//Elecric field at half power point
//E(thetaHP/2)=(cosd(thetaHP/2))^2
thetaHP=2*(acosd(sqrt(E_theta)));//degree(HPBW)
disp(thetaHP,"Half Power Beam Width(degree) : ");
