close;
clear;
clc;
disp("the system can be represented as Yc(s)=Xc(s)/(1+RCs)");
disp("therefore Hc(s)=1/(1+RCs) hence hc(t)=e^-t*u(t) by frequency shifting     property")
disp("therefore hd[n]=hc(t)=e^(-n*Ts)*u[n]");
disp("taking z-transform Hd(z)=1/(1-e^(-n*Ts)*z^-1)");
Ts=1;
w=0:0.1:15;
Hcw=ones(1,length(w))./(1+%i*w);
subplot(2,1,1)
plot(w,Hcw,'r')
//z=%e^%i*w*Ts
title("Ts=1")
Hdw=ones(1,length(w))./(1-exp(-Ts-%i*w*Ts));
plot(w,Hdw,'b')
legend(["Hc(w)";"Hd(wTs)"])
Ts=0.1;
w=0:0.1:15;
Hcw=ones(1,length(w))./(1+%i*w);
subplot(2,1,2)
plot(w,Hcw,'r')
//z=%e^%i*w*Ts
title("Ts=0.1")
Hdw=ones(1,length(w))./(1-exp(-Ts-%i*w*Ts));
//Hdw=ones(1,length(w))./(1+%e^(-2*Ts)-2*%e^(-Ts)*cos(w*Ts))^.5;
plot(w,Hdw,'b')
legend(["Hc(w)";"Hd(wTs)"])

