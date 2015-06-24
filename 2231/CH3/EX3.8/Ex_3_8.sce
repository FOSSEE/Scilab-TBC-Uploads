//Example 3_8
clc;
clear;close;

//Given data: 
V=400;//V
R=10;//in ohm/phase

//Solution :
RL=R+R/2;//ohm
i1=V/RL;//A
i2=V/RL;//A
i3=V/RL;//A
Irms_load=sqrt(1/2/%pi*(integrate('i1^2','theta',0,2*%pi/3)+integrate('(i1/2)^2','theta',2*%pi/3,2*%pi)));//A
disp(Irms_load,"RMS load current in A : ");
Pout=Irms_load^2*R*3;//W
disp(Pout,"Power output(W): ");
Ipeak=i1;//A
Iavg=1/2/%pi*[Ipeak*%pi/3+Ipeak/2*2*%pi/3];//A
disp(Iavg,"Average thyristor current(A) : ");
Irms_thyristor=sqrt(1/2/%pi*[Ipeak^2*%pi/3+(Ipeak/2)^2*2*%pi/3]);//A
disp(Irms_thyristor,"RMS value of thyristor current(A) : ");
