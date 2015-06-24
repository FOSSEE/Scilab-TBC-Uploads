//Example No. 3.3.2
clc;
clear;
close;
format('v',7);
E_theta=1/sqrt(2);//Electric field at theta=90-thetaHP/2
//E(90-thetaHP/2)=sind(90-thetaHP/2)
thetaHP=2*(90-asind(E_theta));//degree(HPBW)
disp(thetaHP,"HPBW(degree) : ");
theta1=0;theta2=180;//degree(Pattern angles)
FNBW=theta2-theta1;//degree(FNBW)//as E is zero at these points
disp(FNBW,"FNBW(degree) : ");
