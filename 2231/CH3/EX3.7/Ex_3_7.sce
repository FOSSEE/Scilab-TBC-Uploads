//Example 3_7
clc;
clear;close;

//Given data: 
V=400;//V
R=10;//in ohm/phase

//Solution :
Ipeak=V/2/R;//A
Irms=sqrt(Ipeak^2*2/3);//A
disp(Irms,"RMS load current in A : ");
Pout=Irms^2*R*3;//W
disp(Pout,"Power output(W) : ");
Iavg=Ipeak/3;//A
disp(Iavg,"Average thyristor current(A) : ");
Irms_thyristor=sqrt(Ipeak^2/3);//A
disp(Irms_thyristor,"RMS value of thyristor current(A) : ");
