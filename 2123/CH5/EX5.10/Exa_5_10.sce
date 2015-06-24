//Example No. 5.10
clc;
clear;
close;
format('v',7);

//Given Data : 
V=240;//V
Ra=0.4;//ohm
N1=600;//rpm
Ifl=25;//A
Radd=1;//ohm
//If1=If2
//T1=T2 leads to If1*Ia1=If2*Ia2: Ia1=Ia2
Ia1=25;//A
Ia2=25;//A
Eb1=V-Ia1*Ra;//V
Eb2=V-Ia2*(Ra+Radd);//V
N2=N1*Eb2/Eb1;//rpm
disp(N2,"Speed at full load torque in rpm : ");
//T3=2*T1
//If3=If1
Ia3=2*Ia1;//A
Eb3=V-Ia3*(Ra+Radd);//V
N3=N1*Eb3/Eb1;//rpm
disp(N3,"Speed at twice the full load torque in rpm : ");
Eb4=0;//V(at speed zero Eb=0)
Ia4=V/(Ra+Radd);//V
T4ByT1=Ia4/Ia1;//(field constant)
disp("Stalling torque is "+string(T4ByT1)+" times of full load torque.");
