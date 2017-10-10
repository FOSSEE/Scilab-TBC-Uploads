//Example 6.18
//Lag compensation for DC motor.

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
//System transfer function 
s=poly(0,'s');
g=1/s/(s+1);
K=10; //DC gain
KGs=syslin('c',K*g);

//Lag compensator
numD=10*s+1; //0.1 
denD=100*s+1; //0.01
D=numD/denD;
Ds=syslin('c',D);

KGDs=Ds*KGs; //compensated system

//The bode plot of the system
bode([KGs;KGDs],0.001/2/%pi,10/2/%pi,['KG(s)';'D(s)G(s)'],"rad");
exec .\fig_settings.sci; // custom script for setting figure properties
title('Frequency response of lag-compensation design...
 of DC motor','fontsize',3)
//------------------------------------------------------------------
//step response
//closed loop system
Gc=KGDs/(KGDs+1);
figure;
t=0:0.05:50;
v=csim('step',t,Gc);
plot(t,v,2)

//Title, labels and grid to the figure
exec .\fig_settings.sci; // custom script for setting figure properties
title('Step response for Lag-compensation design...
 of DC motor','fontsize',3)
xlabel('Time t (sec.)','fontsize',2)
ylabel('y','fontsize',2)
//------------------------------------------------------------------
