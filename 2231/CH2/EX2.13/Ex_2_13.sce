//Example 2_13
clc;
clear;close;

//Given data: 
Vs=230;//V
f=50;//Hz
alfa=%pi/3;//radian

//Solution :
Vm=Vs*sqrt(2);//V
Vdc=2*Vm/%pi*cos(alfa)//V
disp(Vdc,"Vdc in V");
Vrms=Vs;//V
disp(Vrms,"Vrms in V");
Is_by_I=sqrt(1-%pi/2/%pi);
Is1_by_I=2*sqrt(2)/%pi*cos(%pi/4);
HF=sqrt((Is_by_I/Is1_by_I)^2-1);//unitless
disp(HF,"Harmonic factor");
fi1=-alfa;//radian
DF=cos(fi1);//unitless
disp(DF,"Displacement factor");
PF=(Is1_by_I/Is_by_I)*DF;//lagging
disp(PF,"Power factor(lagging)");
