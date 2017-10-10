//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex1_10.sce.

clc;
clear;
subplot(2,2,1)
t=[0:0.001:8];
x=length(t);
v=ones(1,x);
for n=1:x;
    L=5;
    if t(n)<=2
       v(n)=6.25;
    else if t(n)>=6 & t(n)<8
           v(n)=-6.25;
        else
            v(n)=0;
            end
    end 
    end
xlabel("Time in seconds")
ylabel("voltage in volts")
title("voltage waveform")
plot(t,v)
subplot(2,2,2)
t=[0:0.001:8];
x=length(t);
p=ones(1,x);
for n=1:x;
    if t(n)<=2
       v(n)=6.25;
       i(n)=1.25;
       p(n)=v(n)*t(n)*i(n);
    else if t(n)>=6 & t(n)<8
           v(n)=-6.25;
           i(n)=10;
           p(n)=(i(n)-(1.25*t(n)))*v(n);
        else
            v(n)=0;
            i(n)=2.5;
            p(n)=v(n)*t(n)*i(n);
            end
    end 
    end
xlabel("Time in seconds")
ylabel("power in watts")
title("power waveform")
plot(t,p)
subplot(2,2,3)
t=[0:0.001:8];
x=length(t);
e=ones(1,x);
L=5;
for n=1:x;
    if t(n)<=2
       i(n)=1.25;
       e(n)=(1/2)*L*(t(n)*i(n))^2;
    else if t(n)>=6 & t(n)<8
           i(n)=10;
           e(n)=(1/2)*L*(i(n)-(1.25*t(n)))^2;
        else
            i(n)=2.5;
            e(n)=(1/2)*L*(i(n))^2;
            end
    end 
    end
xlabel("Time in seconds")
ylabel("Energy in joules")
title("Energy waveform")
plot(t,e)

