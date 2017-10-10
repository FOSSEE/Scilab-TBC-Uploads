//Example 7.29
// A reduced order compensator design for a satellite attitude control

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
// State space representation
F=[0 1;0 0];
G=[0 1]';
H=[1 0];
J=0;
n=sqrt(length(F));//order of the system

//partioned system
Faa=F(1,1); Fab=F(1,2);
Fba=F(2,1); Fbb=F(2,2);
Ga=G(1);Gb=G(2);

// Desired estimator poles
Pe=[-5];
// Observer gain matrix for system 
L=ppol(Fbb',Fab',Pe);
L=L';
disp(L,"L=" );
//------------------------------------------------------------------
//State feedback control law u=-Kx=-(K+[L*k2 0])[y xc]'; 
k1=1; k2=sqrt(2);
K=[k1 k2];
Kc=K+[L*k2 0];
//------------------------------------------------------------------
//compensator differential equation
//xc_dot=(Fbb-L*Fab)*xb_hat + (Fba - L*Faa)*y + (Gb - L*Ga)*u
//xc_dot=((Fbb-L*Fab)-k2)*xc + [(Fba - L*Faa)-(Gb - L*Ga)*(k1+L*k2)+L*(Fbb-L*Fab)]*y 
Fc=(Fbb-L*Fab)-Gb*k2
Fy=(Fba - L*Faa)-(Gb - L*Ga)*(k1+k2*L)+(Fbb-L*Fab)*L
//compensator transfer function
s=poly(0,'s');
Gest=syslin('c',Fy/(s-Fc))//estimator transfer function
Dcr=-[k1+L*k2+k2*Gest]
disp(Dcr,'Dcr','compensator transfer function')
//------------------------------------------------------------------
//Root locus with reduced order compensator
G=1/s^2;
G=syslin('c',G);
exec('./zpk_dk.sci', -1);
[pl,zr Kp]=zpk_dk(Dcr);

Dcr=poly(zr,'s','roots')/poly(pl,'s','roots')
Dcr=syslin('c',Dcr);
evans(G*Dcr)
zoom_rect([-8 -4  2 4])

f=gca();
f.x_location = "origin"
f.y_location = "origin"
xset("color",2);
h=legend('');
h.visible = "off"

//Title, labels and grid to the figure
exec .\fig_settings.sci; //custom script for setting figure properties
title(['Root locus of a reduced order controller and',"$1/s^2$",...
 "process"],'fontsize',3);
//------------------------------------------------------------------
//Frequnecy response for 1/s^2 and compensated

figure,
bode([-Kp*G*Dcr;G],0.01/2/%pi,100/2/%pi,"rad");
title(["Frequency response","$G(s)=1/s^2$", "with a reduced...
 order estimator"],'fontsize',3)
exec .\fig_settings.sci; //custom script for setting figure properties
legend('Compensated','Uncompensated')
//------------------------------------------------------------------
