//Example No. 5.22
clc;
clear;
close;
format('v',6);

//Given Data : 
V1=500;//V
N1=1500;//rpm
Ia=100;//A
V2=350;//V
Ra=1.1;//ohm
alfa=45;//degree
N2=1200;//rpm
//V=K*omega+Ia*Ra
K=(V1-Ia*Ra)/(N1*2*%pi/60);//V-s/rad or N-m/A
V=3*sqrt(3)*V2*sqrt(2)/2/%pi/sqrt(3)*(1+cosd(alfa));//Volt
Ia=(V-K*N2*2*%pi/60)/Ra;//A
disp(Ia,"RMS soirce current in A : ");
Vin_rms=Ia*sqrt(120/180);//V
Iavg=Ia/3;//A
disp(Iavg,"Average thyristor current in A : ");
Irms=Ia/sqrt(3);//A
disp(Irms,"RMS thyristor current in A : ");
pf_in=V*Ia/sqrt(3)/V2/Vin_rms;//lagging
disp(pf_in,"Input power factor)lagging : ");
