//Example 7.28
// Full order compensator design for satellite attitude control.

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------

// State space representation
A=[0 1; 0 0];
B=[0 1]';
C=[1 0];
D=0;
n=sqrt(length(A));
//Desired poles for the satellite attitude control system.
Pc=[-0.707+0.707*%i -0.707-0.707*%i ]

// State feedback gain
K=ppol(A,B,Pc)
disp(K,'K=',"State feedback gain")

//Estimator - error roots are at
Pe=[-2.5+4.3*%i -2.5-4.3*%i]
L=ppol(A',C',Pe);
L=L';
disp(L,'L=',"Observer gain")
//------------------------------------------------------------------
//Compensator Design
sys1=syslin('c',A,B,C,D);
G=ss2tf(sys1);
s=poly(0,'s');

Ds=-K*inv(s*eye(n,n)-A+B*K+L*C)*L;

exec('./zpk_dk.sci', -1);
[pl,zr Kp]=zpk_dk(Ds);
D=poly(zr,'s','roots')/poly(pl,'s','roots')

evans(G*D)
zoom_rect([-8 -6 8 6])

f=gca();
f.x_location = "origin"
f.y_location = "origin"
xset("color",2);
h=legend('');
h.visible = "off"

//Title, labels and grid to the figure
exec .\fig_settings.sci; //custom script for setting figure properties
title('Root locus for combined control and estimator,...
 with process gain as the parameter','fontsize',3);
//------------------------------------------------------------------
//Frequnecy response for 1/s^2 and compensated

figure,
bode([-Ds*G;G],0.01/2/%pi,100/2/%pi,"rad");
title(["Frequency response for","$G(s)=1/s^2$"],'fontsize',3)
legend('Compensated','Uncompensated')
exec .\fig_settings.sci; //custom script for setting figure properties
//------------------------------------------------------------------
