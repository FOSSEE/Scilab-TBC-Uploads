//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex1_5.sce.

clc;
clear;
subplot(2,2,1)
t=[0:0.00001:2];
x=length(t);
i=ones(1,x);
for n=1:x;
if t(n)<=1 
    i(n)=2
else
    i(n)=0
end
end
xlabel("Time in seconds")
ylabel("Current in amphere")
title("current wavefrom")
plot(t,i)
subplot(2,2,2)
t=[0:0.00001:2];
x=length(t);
v=ones(1,x);
c=0.1;
for n=1:x;
    i(n)=2;
if t(n)<=1 
    v(n)=i(n)*t(n)/c;
else
    v(n)=i(n)/c;
end
end
xlabel("Time in seconds")
ylabel("voltaget in volts")
title("voltage wavefrom")
plot(t,v)
subplot(2,3,4)
t=[0:0.00001:2];
x=length(t);
q=ones(1,x);
c=0.1;
for n=1:x;
    v(n)=20;
if t(n)<=1 
    q(n)=v(n)*t(n)*c;
else
    q(n)=v(n)*c;
end
end
xlabel("Time in seconds")
ylabel("capacitance  in coloumbs")
title("charge waveform")
plot(t,q)
subplot(2,3,5)
t=[0:0.00001:2];
x=length(t);
p=ones(1,x);
for n=1:x;
    v(n)=20;
if t(n)<=1 
    i(n)=2;
    p(n)=v(n)*t(n)*i(n);
else
    i(n)=0;
    p(n)=v(n)*i(n);
end
end
xlabel("Time in seconds")
ylabel("power in watts")
title("power waveform")
plot(t,p)
subplot(2,3,6)
t=[0:0.00001:2];
x=length(t);
e=ones(1,x);
c=0.1;
for n=1:x;
    v(n)=20;
if t(n)<=1 
  e(n)=((v(n)*t(n))^2*c)/2;
else
    e(n)=((v(n)^2)*c)/2;
end
end
xlabel("Time in seconds")
ylabel("Energy in joules")
title("Energy waveform")
plot(t,e)



