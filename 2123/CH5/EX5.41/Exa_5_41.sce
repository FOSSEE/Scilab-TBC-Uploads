//Example No. 5.41
clc;
clear;
close;
format('v',9);

//Given Data : 
V1=220;//V
N1=1500;//rpm
I=10;//A
Ra=3;//ohm
V2=230;//V
N2=600;//rpm
Eb1=V1-I*Ra;//V
Eb2=Eb1*N2/N1;//V
Ia=I/2;//A(at half rated torque)
Vm=V1*sqrt(2);//V
alfa=acosd((Eb2+Ia*Ra)*%pi/2/Vm);//degree
disp(alfa,"Firing angle in degree : ");
