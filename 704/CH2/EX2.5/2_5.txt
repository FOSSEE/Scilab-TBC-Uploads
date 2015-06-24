//Caption:calculate the generated emf
//Exam:2.5
clc;
clear;
close;
S_1=80;//Number of armature slots 
S_2=6;//Number of conductor per slot
Z=S_1*S_2;//Number of armature conductors
F=50;//Flux per pole(in mWb)
F_1=F*10^-3;//(in Wb)
P=6;//Number of poles
A=P;//Number of parallel paths
N=1200;//armature speed(in rpm)
E_g=F_1*Z*N*P/(60*A);//EMF generated in 6 pole lap wound dc generator (in Volts)
disp(E_g,'EMF generated in 6 pole lap wound dc generator (in Volts)=');