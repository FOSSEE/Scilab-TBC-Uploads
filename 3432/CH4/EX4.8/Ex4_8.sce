//Example 4.8
//Equivalent discrete controller for DC motor speed control.
//------------------------------------------------------------------
//NOTE THAT-- The system response (continuous) to sampled control 
//input depends on 
//the sampling time set for continuous signal in SIMULATION.
//In this example we consider sampling period of 0.009 sec 
//to represent continuous time signal.
//------------------------------------------------------------------

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
// Continuous time system and controller
// System transfer function
s=%s; 
num=[45 0];
den=[45 14 1]
Nms=poly(num,'s','coeff');
Dns=poly(den,'s','coeff');
Gp=syslin('c',Nms/Dns); //system transfer function

// Controller

numDa=[6 1];
denDa=[0 1]
Nms=poly(numDa,'s','coeff');
Dns=poly(denDa,'s','coeff');
sysD=syslin('c',1.4*Nms/Dns); //controller transfer function

//Closed loop responses

num=[1 0];
den=[1 0];
Nms=poly(num,'s','coeff');
Dns=poly(den,'s','coeff');
H=syslin('c',Nms/Dns)

sysDa=Gp*sysD/.H;

//step response and control input
t=0:0.009:5;
yt=csim('step',t,sysDa); //step response
figure(0)
plot2d(t,yt,1)
Gu=sysD/(1+Gp*sysD);
ut=csim('step',t,Gu); //control input
figure(1)
plot2d(t,ut,1)
//------------------------------------------------------------------

sys=tf2ss(Gp); //state space model of the system
con=tf2ss(sysD); //controller state space model

// discrete-time time system and controller

//Discretize the system and control with sampling time Ts=0.07
// using Bilinear Transform
Ts=0.07;
sysDd=cls2dls(sys,Ts); // discrete-time system state space model
conDd=cls2dls(con,Ts); // discrete-time controller state space model

//Pulse transfer function of system
Gpz=ss2tf(sysDd);
//Pulse transfer function of controller
Gcz=ss2tf(conDd);
//Closed loop response
Gz=Gpz*Gcz/(1+Gpz*Gcz)
//Control input pulse transfer function
Guz=Gcz/(1+Gpz*Gcz)
T=0:Ts:5;
r=ones(1,length(T));
yd=flts(r,Gz);............//Discrete respnse to discrete input
ud=flts(r,Guz);           //Discrete Control input
//continuous response for digital input
t=0:0.009:5;
k=0;

for i=1:length(yd)
    for j=1:8
       if (k+j)>length(t) then
          break
          else
          YD(1,k+j)=yd(i);
       end
       end
    k=k+j;
end

yt=csim(1-YD,t,Gp*sysD);
scf(0)
plot2d(t,yt,5);
scf(1)
plot2d2(T,ud,5);
//------------------------------------------------------------------
//Discretize the system and control with sampling time Ts=0.035
// using Bilinear Transform
Ts=0.035;
sysDd=cls2dls(sys,Ts); // discrete-time system state space model
conDd=cls2dls(con,Ts); // discrete-time controller state space model

Gpz=ss2tf(sysDd);      //Pulse transfer function of system
Gcz=ss2tf(conDd);     //Pulse transfer function of controller

//Closed loop response
Gz=Gpz*Gcz/(1+Gpz*Gcz)
//Control input pulse transfer function
Guz=Gcz/(1+Gpz*Gcz)
T=0:Ts:5;
r=ones(1,length(T));
yd=flts(r,Gz);............//Discrete respnse to discrete input
ud=flts(r,Guz);           //Discrete Control input
t=0:0.009:5;
k=0;

for i=1:length(yd)
    for j=1:4
       if (k+j)>length(t) then
          break
          else
          YD(1,k+j)=yd(i);
       end
       end
    k=k+j;
end

yt=csim(1-YD,t,Gp*sysD);
scf(0)
plot2d(t,yt,2);
scf(1)
plot2d2(T,ud,2);

scf(0)
//Title, labels and grid to the figure
exec .\fig_settings.sci; //custom script to set the figure properties
title('Comparision plots of Speed-control system with continuous...
 and discrete controllers','fontsize',3)
xlabel('Time t (sec.)','fontsize',2)
hl=legend(['Continuous time','Discrete-time, Ts=0.07 s'...
,'Discrete-time, Ts=0.035 s'],4);
scf(1)
//Title, labels and grid to the figure
exec .\fig_settings.sci; //custom script to set the figure properties
title('Comparision plots of Speed-control system with continuous...
 and discrete controllers','fontsize',3)
xlabel('Time t (sec.)','fontsize',2)
hl=legend(['Continuous time','Discrete-time, Ts=0.07 s',...
'Discrete-time, Ts=0.035 s']);
//------------------------------------------------------------------
