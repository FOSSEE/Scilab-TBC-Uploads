clc;
clear all;
disp("heat transfer rate")
d=300/1000;//m diameter
L=3.5;//m
delT=40;//degree C =ts-ti
f=0.022;// friction factor
St=f/2;
disp("The energy balance yields Q=h*A*(ts-ta)=m*cp*(to-ti)")
disp("h*(%pi*D*L)*(ts-(to+ti)/2)=rho*(%pi*D^2*U/4)*cp(to-ti)")
disp("(h/(rho*U*cp))*L*(ts-to+ts-ti)/2=D/4*(to-ti)")
disp("St*L/2*(ts-to+ts-ti)=D/4*((ts-ti)-(ts-to))")
disp("f/8*L/2*(ts-to+ts-ti)=D/4*((ts-ti)-(ts-to))")
disp("thus by putting the values, ")

t1=(d/4-f/8*L/2)*delT/(f/8*L/2+d/4)// ts-to
t=delT-t1;
disp("degree C",t,"Rise in the temperature of fluid at the end =")

