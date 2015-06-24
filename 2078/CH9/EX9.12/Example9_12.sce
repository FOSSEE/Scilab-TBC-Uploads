//Exa 9.12
clc;
clear;
close;
//Given data :
V=20;//kV
C=poly(0,'C');
//Cmutual=C;//F
CmutualBYC=1;
//Cshunt=C/5;//F
CshuntBYC=1/5;
//I2=I1+i1//omega*C*V2=omega*C*V1+omega*Cshunt*V1
V2BYV1=1+CshuntBYC;
V3BYV2=1;//a V2=V3
//V=V1+V2+V3
V1=V/(V3BYV2+V2BYV1+V2BYV1);//kV
V2=V2BYV1*V1;//kV
V3=V2;//kV
disp(V3,"Voltage onn the line end unit in kV : ");
//I3+ix=I2+i2
CxBYC=(V2+CshuntBYC*(V1+V2)-V3)/V3;
disp("Capacitance required is "+string(CxBYC)+"C(in F).");


