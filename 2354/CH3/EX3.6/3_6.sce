//example 3.6
clc; funcprot(0);
// Initialization of Variable
clf()
t=linspace(0,100,11);
tau=18;
omega=100;
Wdotelec=-2.0;
Wdotshaft=tau*omega/1000;
Wdot=Wdotelec+Wdotshaft;
Q=0.2*2.71^-(0.05*t);
delE=4*(1-2.71^-(0.05*t));
plot(t,Q);
plot(t,delE,'r');
xtitle('Q or delE vs t','time','Q(blue)or delE(red)');
clear()
