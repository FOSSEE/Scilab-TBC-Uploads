clc;
clear;
format('v',6);
disp("where t varies from t=1 to t=10.","r=10t,theta=0,phi=0","the straight line can be characterized as");
disp("F(in Newton)=-103/100t^2 ar","hence,F can be written as ");
disp("And dr/dt=10 ar");
work_done=-103*10/100*integrate('1/t^2','t',1,10);
disp(work_done,"work_done(in Jule)=");
