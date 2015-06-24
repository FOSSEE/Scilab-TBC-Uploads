clc;
clear;
T=120;//degree F
D=8;//in
vavg=10;//ft/s
roughness=0;
kvis=1.89/10000;//(ft^2)/s
Re=vavg*(D/12)/kvis;
//from this value of Re and roughness/D=0, and using Moody's chart
f=0.022;
hLperl=f*(vavg^2)/(D*2*32.2/12);
//Dh=4*A/P=4*(a^2)/(4*a)=a

//Vs=(%pi*((D/12)^2)*vavg)/(4*a^2)
//a=f*((%pi*((D/12)^2)*vavg)/(4*a^2))/(2*32.2) and Reh=((%pi*((D/12)^2)*vavg)/(4*a^2))*a/kvis
//by trial and error
f=0.023;
x=(%pi*((D/12)^2)*vavg/4)^2;
y=x*f/(2*32.2);
a=((y/0.0512)^(1/5))*12;//in
disp("inches",a,"The duct size(a) for the square duct if the head loss per foot remains the same for the pipe and the duct=") 