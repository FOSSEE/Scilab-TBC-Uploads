//Example No. 3.8.1
clc;
clear;
close;
format('v',6);
theta1=0;theta2=%pi/2;//radian(Angles)
fi1=0;fi2=2*%pi;//radian(Angles)
//Prad=integrate('integrate('U','thheta',theta1,theta2)','fi',fi1,fi2);
Prad_BY_Um=%pi*(1/2)*(cos(2*theta1)-cos(2*theta2));//(Power radiated/Max intensity)
Do=4*%pi/Prad_BY_Um;//Exact Directivity
disp(Do,"Exact Directivity : ");
//Um*Cosd(thetaHP/2)=0.5*Um
thetaHP=2*acosd(0.5);//degree(HPBW)
fiHP=thetaHP;//degree(HPBW)
Do=41253/(thetaHP*fiHP);//Approximate Directivity
disp(Do,"Approximate Directivity : ");
