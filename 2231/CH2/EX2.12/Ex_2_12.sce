//Example 2_12
clc;
clear;close;

//Given data: 
Vs=230;//V
f=50;//Hz
alfa=90;//degree

//Solution :
Vm=Vs*sqrt(2);//V
Vdc=Vm/%pi*(1+cosd(alfa))//V
disp(Vdc,"Vdc in V");
Vrms=Vm/sqrt(2)*sqrt(1/%pi*[%pi-%pi/2+sin(%pi)/2]);//V
disp(Vrms,"Vrms in V");
Is_by_I=sqrt(1-%pi/2/%pi);
Is1_by_I=2*sqrt(2)/%pi*cos(%pi/4);
HF=sqrt((Is_by_I/Is1_by_I)^2-1);//unitless
disp(HF,"Harmonic factor");
theta1=-alfa/2*%pi/180;//radian
DF=cos(theta1);//unitless
disp(DF,"Displacement factor");
PF=(Is1_by_I/Is_by_I)*DF;//lagging
disp(PF,"Power factor(lagging)");
