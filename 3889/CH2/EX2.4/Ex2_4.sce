//Example 2.4
//page 63
//Control Systems: Principles and Design 
//M Gopal, Second Edition, Tata McGraw-Hill
//Chapter: Dynamic Models and Dynamic Response


xdel(winsid())//close all graphics Windows
clear;
clc;

// Transfer function
s= %s;
//s=poly(0,'s');
y=1;
r=(s^2) + (3*s) + 2;
//continuous time linear model created
g=syslin('c',y/r);

clf();
t=0:0.5:100;
a=size(t)
u=ones(a(1),a(2));
//step response
y1=csim(u,t,[g*5]);

//ramp response
u2= 5* t;
y2=csim(u2,t,g)

//plot
subplot(211)
plot(t,y1)
m=gca();
m.auto_scale = "off"
m.data_bounds = [0,0;6,6]
plot(t,5*u)
title('Step Response of transfer function','fontsize',3)
xlabel('Time t (sec.)','fontsize',2)
ylabel('Amplitude','fontsize',2)
subplot(212)
plot(t,y2)
m=gca();
m.auto_scale = "off"
m.data_bounds = [0,0;10,10]

plot(t,u2)
title('Ramp Response of transfer function','fontsize',3)
xlabel('Time t (sec.)','fontsize',2)
ylabel('Amplitude','fontsize',2)
