//chapter 17
//example 17.7
//page 547
clear;
clc ;
//given
Rl=10;//load resistance
Po=5;//op power
Rdsmin=4;
gm=250;//mA/V
//peak op voltage
Vp=round(sqrt(2*Rl*Po));
Rl=20;
Ip=Vp/Rl;
//supply voltage
Vcc=[Vp+(Ip*Rdsmin)];
printf("\nVCC=+-%d V",Vcc);
Vth=1;
Vr13=Vth;Vr14=Vth;
deltaVr14=10^-3*Ip/gm;
deltaVr13=deltaVr14;
//to avoid turn off of Q1,let 
deltaVr3=2;
Vr3=deltaVr3+1;
Vr7=Vr3;Vr6=Vr3;
//to avoid saturation of Q2
Vce2=Vp+Vr7+1;
Vr4r5=2*Vcc-Vr6-Vr7-Vce2;
printf("\nVoltage drops across R3,R6,R7 is %d V and across R4+R5 is %d V",Vr3,Vr4r5)
