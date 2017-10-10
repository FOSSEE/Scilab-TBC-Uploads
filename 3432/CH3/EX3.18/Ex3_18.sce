//Example 3.18 Satellite Transfer Function

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
//(a)
//Given
d=1 //meters
I=5000 //Kg-meter^2

//Coefficients of numerator and denominator of the transfer function
// of satellite
numG=[d/I 0];
denG=[0 0 1];

// Transfer function
Ns=poly(numG,'s','coeff');
Ds=poly(denG,'s','coeff');
sysG=syslin('c',Ns/Ds);
t=0:0.01:10;
[i j]=size(t);

//------------------------------------------------------------------
//(b)
// Thrust input after 5 sec.
u=zeros(1,j);
w=find(t>=5 & t<=5+0.1);
u(w)=25;
plot(t,u);
exec .\fig_settings.sci; //custom script for setting figure properties
title("Transient response of the satellite...
 (a) Thrust input",'fontsize',3);
xlabel('Time t (sec.)','fontsize',2)
ylabel('Fc','fontsize',2)

//Transient response of the satellite to the thrust input as a pulse 
sysd=dscr(sysG,0.01); //sample data system model
y=flts(u,sysd);        //impulse response 
figure, plot(t,y*180/%pi);
exec .\fig_settings.sci; //custom script for setting figure properties
title("Transient response of the satellite(double-pulse)...
 (b) satellite attitude",'fontsize',3);
xlabel('Time t (sec.)','fontsize',2)
ylabel('$\theta(deg)$','fontsize',2)
//------------------------------------------------------------------
// Thrust input double-pulse.
u=zeros(1,j);
w1=find(t>=5 & t<=5+0.1);
u(w1)=25;
w2=find(t>=6.1 & t<=6.1+0.1);
u(w2)=-25;
figure,
plot(t,u);
exec .\fig_settings.sci; //custom script for setting figure properties
title("Transient response of the satellite (double-pulse)...
 (a) Thrust input",'fontsize',3);
xlabel('Time t (sec.)','fontsize',2)
ylabel('Fc','fontsize',2)

//Transient response of the satellite to the thrust input as a pulse 
sysd=dscr(sysG,0.01); //sample data system model
y=flts(u,sysd);        //impulse response 
figure, plot(t,y*180/%pi);
exec .\fig_settings.sci; //custom script for setting figure properties
title("Transient response of the satellite(double-pulse)...
 (b) satellite attitude",'fontsize',3);
xlabel('Time t (sec.)','fontsize',2)
ylabel('$\theta(deg)$','fontsize',2)

//------------------------------------------------------------------
