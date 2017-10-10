//Example 7.32
// Redesign of the Dc servo compensator using SRL

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------

// State space representation
//Transfer function model for DC Servo
s=poly(0,'s');
num=10;
den=s*(s+2)*(s+8);
Gs=syslin('c',num/den);

// State space representation
F=[-10 1 0;-16 0 1;0 0 0]
G=[0 0 10]';
H=[1 0 0];
J=0;
n=sqrt(length(F));
//Desired poles for the DC Servo system.
Pc=[-2+1.56*%i -2-1.56*%i -8.04]


// State feedback gain
K=ppol(F,G,Pc)
disp(K,'K=',"State feedback gain")

//Estimator - error roots are at
Pe=[-4+4.49*%i -4-4.49*%i -9.169]
exec .\acker_dk.sci;
Lt=ppol(F',H',Pe);
L=clean(Lt');
disp(L,'L=',"Observer gain")
//Error in book, Gain values are different in book.
//------------------------------------------------------------------
//Compensator Design
DK=-K*inv(s*eye(n,n)-F+G*K+L*H)*L;
DK=syslin('c',DK)
exec('./zpk_dk.sci', -1);
[pl,zr,Kp]=zpk_dk(DK);
Dc=poly(zr,'s','roots')/poly(pl,'s','roots')
//------------------------------------------------------------------
//symmetric root locus 
G_s=horner(Gs,-s);
evans(Gs*G_s)
zoom_rect([-10 -5 10 5])
f=gca();
f.x_location = "origin"
f.y_location = "origin"
xset("color",2);
h=legend('');
h.visible = "off"
//Title, labels and grid to the figure
exec .\fig_settings.sci; //custom script for setting figure properties
title('Symmetric root locus','fontsize',3);
//------------------------------------------------------------------
//root locus 
figure,
evans(Gs*Dc) //Correct root locus
zoom_rect([-11 -6 1 6])
f=gca();
f.x_location = "origin"
f.y_location = "origin"
xset("color",2);
h=legend('');
h.visible = "off"
//Title, labels and grid to the figure
exec .\fig_settings.sci; // custom script for setting figure properties
title('Root locus for pole assignment from the SRL','fontsize',3);
//------------------------------------------------------------------
//Discrete-time controller
nc=94.5*conv([7.98 1],[2.52 1])
dc=conv([59.5348 8.56 1],[10.6 1])
sysDc=poly(nc,'s','coeff')/poly(dc,'s','coeff');
sysDc_ss=syslin('c',tf2ss(sysDc));
ts=0.1;
sysDd=dscr(sysDc_ss,ts)
Gdz=ss2tf(sysDd);

disp(sysDc,"Continuous-time compensator")
disp(Gdz,"Discrete-time compensator")
//------------------------------------------------------------------
//step responses
importXcosDiagram(".\Ex7_32_model.xcos")

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












