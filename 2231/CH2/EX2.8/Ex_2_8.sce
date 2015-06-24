//Example 2_8
clc;
clear;close;

//Given data: 
Vs=230;//V
f=50;//Hz
Io=15;//A
R=0.5;//ohm
L=0.3;//H
E1=100;//V
E2=-100;//V

//Solution :
///part (a)
Vm=sqrt(2)*Vs;//V
//2*Vm/%pi*cosd(alfa)=E1+Io*R
alfa1=acosd((E1+Io*R)/(2*Vm/%pi));//degree
disp(alfa1,"(a) Firing angle in degree");
///part (b)
alfa2=acosd((E2+Io*R)/(2*Vm/%pi));//degree
disp(alfa2,"(b) Firing angle in degree");
disp("Part(c)");
//Pin=Vs*Io*cosd(theta)
Pout=E1*Io+Io^2*R;//W
//Pin=Pout
cos_theta=(Pout/Vs/Io);//laging
disp(cos_theta,"When E=100, input power factor(lagging)");
Pout=-E2*Io-Io^2*R;//W
//Pin=Pout
cos_theta=(Pout/Vs/Io);//laging
disp(cos_theta,"When E=-100, input power factor(lagging)");
