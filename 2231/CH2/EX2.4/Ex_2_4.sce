//Example 2_4
clc;
clear;close;

//Given data: 
Vs=230;//V
R=15;//ohm
alfa=%pi/2;//radian

//Solution :
Vm=sqrt(2)*Vs;//V
Vdc=Vm/2/%pi*(1+cos(alfa));//V
disp(Vdc,"Vdc(V) : ");
Idc=Vdc/R;//A
disp(Idc,"Idc(A) : ");
Vrms=Vm*sqrt((%pi-alfa)/4/%pi+sin(%pi)/8/%pi);//V
disp(Vrms,"Vrms(V) : ");
Irms=Vrms/R;//A
disp(Irms,"Irms(A) : ");
Pdc=Vdc*Idc;//W
disp(Pdc,"Pdc(W) : ");
Pac=Vrms*Irms;//W
disp(Pac,"Pac(W) : ");
R_eff=Pdc/Pac;//rectification efficiency
disp(R_eff,"Rectification efficiency(unitless) : ");
Kf=Vrms/Vdc;//Form factor
disp(Kf,"Form factor(unitless) : ");
Kr=sqrt(Kf^2-1);//Ripple factor
disp(Kr,"Ripple factor(unitless) : ");
VA_rating=Vs*Irms;//VA
disp(VA_rating,"VoltAmpere rating(VA) : ");
TUF=Pdc/VA_rating;//Transformer utilization factor
disp(TUF,"Transformer utilization factor(unitless) : ");
PIV=Vm;//V
disp(PIV,"Peak Inverse Voltage across thyristor(V) : ");
//Ans in the book is wrong for some part.
