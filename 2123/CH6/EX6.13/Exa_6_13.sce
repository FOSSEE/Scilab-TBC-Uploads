//Example No. 6.13
clc;
clear;
close;
format('v',7);

//Given Data : 
P=4;//pole
f=50;//Hz
S=4/100;//slip
T=1000;//synch.Watts
f1=25;//Hz
Tnew=T*f/f1;//synch.watts
disp(Tnew,"Torque in synch. Watts : ");
