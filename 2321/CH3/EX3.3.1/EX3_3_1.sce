//Example No. 3.3.1
clc;
clear;
close;
format('v',7);
E_theta=1/sqrt(2);//Electric Field at half power
//theta=thetaHP/2;//E(thetaHP/2)=cosd(thetaHP/2)
thetaHP=2*acosd(E_theta);//degree(Half power beam width)
disp(thetaHP,"Half power beam width(degree) : ");
