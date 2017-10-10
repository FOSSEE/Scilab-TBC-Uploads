//Example 7.34
// Servomechanism, increasing the velocity constant through
// zero assignment. 

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------

// State space representation
//Transfer function model for DC Servo
s=poly(0,'s');
num=1;
den=s*(s+1);
Gs=syslin('c',num/den);

// State space representation
F=[0 1;0 -1]
G=[0 1]';
H=[1 0];
J=0;
n=sqrt(length(F));
//Desired poles for the DC Servo system.
Pc=[-2 -2]

// State feedback gain
exec .\acker_dk.sci;
K=acker_dk(F,G,Pc)//Gain computed in book is incorrect.
disp(K,'K=',"State feedback gain")
//------------------------------------------------------------------
//Overall transfer function with reduced order estimator.
Gred=8.32*(0.096+s)/(0.1 +s)/(8 + 4*s+s^2)
Gred=syslin('c',Gred)
disp(Gred,'Ys/Rs',"Overall transfer function with reduced...
 order estimator")

//Compensator
D=(0.096+s)*(s+1)/(4.08 +s)/(0.0196+s)
Ds=syslin('c',D*8.32)
disp(Ds,'Ds=',"Compensator transfer function")
//------------------------------------------------------------------
//root locus 
figure(0)
evans(D*Gs,100) //Correct root locus
zoom_rect([-0.2 -0.1 0.1 0.1])
f=gca();
f.x_location = "origin"
f.y_location = "origin"
xset("color",2);
h=legend('');
h.visible = "off"
//Title, labels and grid to the figure
exec .\fig_settings.sci; // custom script for setting figure properties
title('Root locus of lag-lead compensation','fontsize',3);
//------------------------------------------------------------------
//Bode plot
figure(1)
bode(Ds*Gs,0.01/2/%pi,100/2/%pi,"rad") //Correct root locus

f=gca();
h=legend('');
h.visible = "off"
//Title, labels and grid to the figure
exec .\fig_settings.sci; //custom script for setting figure properties
title('Frequency response of lag-lead compensation','fontsize',3);
//------------------------------------------------------------------
//step response of the system with lag compensation
t=0:0.1:5;
ylag=csim('step',t,8.32*Gs*D/(1+8.32*Gs*D));
figure
plot(t,ylag,2);
xlabel('Time (sec)');
ylabel('y');
title("Step response of the system with lag compensation",'fontsize',3)
exec .\fig_settings.sci; //custom script for setting figure properties
//------------------------------------------------------------------
//Discrete-time controller
sysDc_ss=syslin('c',tf2ss(Ds));
ts=0.1;
sysDd=dscr(sysDc_ss,ts)
Gdz=ss2tf(sysDd)

disp(Gdz,"Discrete-time compensator")
//------------------------------------------------------------------
//step responses comparision
importXcosDiagram(".\Ex7_34_model.xcos")

xcos_simulate(scs_m,4);
scs_m.props.context
figure,
plot(yt.time,yt.values(:,1),2)
plot(yt.time,yt.values(:,2),'r--')
xlabel('Time (sec)');
ylabel('y');
title("Comaprison of step responses for continuous and discrete...
 controllers",'fontsize',3)
exec .\fig_settings.sci; //custom script for setting figure properties
legend("continuous controller","digital controller",4)

//Control inputs
figure,
plot(ut.time,ut.values(:,1),2)
plot(ut.time,ut.values(:,2),'r--')
xlabel('Time (sec)');
ylabel('u');
title("Comaprison of control signals for continuous and discrete...
 controllers",'fontsize',3)
exec .\fig_settings.sci; //custom script for setting figure properties
legend("continuous controller","digital controller")
//------------------------------------------------------------------
