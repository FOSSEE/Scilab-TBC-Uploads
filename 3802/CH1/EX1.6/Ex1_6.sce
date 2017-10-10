//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex1_6.sce.

clc;
clear;
t=[0:0.0001:4];
x=length(t);
p=ones(1,x);
for n=1:x;
    if t(n)<=2
        v(n)=3;
        i(n)=10;
        p(n)=v(n)*t(n)*i(n);
    else if t(n)>2 
            v(n)=12;
            i(n)=-5;
            p(n)=(v(n)-(3*t(n)))*i(n);
        else
            p(n)=0;
        end
    end 
    end
xlabel("Time in seconds")
ylabel("Power in watts")
title("Power waveform")
plot(t,p)


//Case(b)
printf("\n (b)")
area_OAB=(1/2)*max(p)*max(t)/2;
area_BCD=(1/2)*abs(min(p))*max(t)/2;
energy=area_OAB-area_BCD;
avg_power=energy/max(t);
printf("\n The average power=%1.1f W \n",avg_power)



