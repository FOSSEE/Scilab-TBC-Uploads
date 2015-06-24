//Exa:1.30
clc;
clear;
close;
f=50;//in hertz
P1=6;//No. of poles
P2=4;//No.of poles
N_sc=120*f/(P1+P2);//Synchronous Speed (in rpm)
s=0.02;//slip
N=N_sc*(1-s);//Actual Speed (in rpm)
N_s=120*f/P1;//Synchronous Speed of 6-pole motor
s1=(N_s-N)/N_s;
f1=s1*f;
disp(f1,'Frequency of rotor current of 6-pole motor (in Hertz)=');
disp(s1,'Slip reffered to 6-pole stator feild=');
N_s2=120*f1/P2;//Synchronous Speed of 4-pole motor
s2=(N_s2-N)/N_s2;
f2=s2*f1;
disp(f2,'Frequency of rotor current of 4-pole motor (in Hertz)=');
disp(s2,'Slip reffered to 4-pole stator feild=');