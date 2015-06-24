

//example 5.13
//calculate formation constant of acquifer using theis method
clc;funcprot(0);
//given
Q=2500;      //discharge(l/min)
r=60;        //distance of observation well from acquifer
tmin=[1 1.5 2 2.5 3 4 5 6 8 10 12 14 18 24 30 40 50 60 80 100 120 150 180 210 240];  //time in minutes
s=[0.2 0.26 0.3 0.33 0.36 0.41 0.45 0.48 0.53 0.56 0.59 0.62 0.66 0.71 0.75 0.80 0.83 0.86 0.91 0.95 0.98 1.03 1.05 1.08 1.10];  //drawdown
u=[1:1:9];
Wu=[0.2194 0.04891 0.01315 0.003779 0.001148 0.000360 0.000116 0.0000377 0.0000125];
for i=1:25
    tday(i)=tmin(i)/(60*24);
end

for i=1:25
    rt(i)=r^2/tday(i);
end
//graph is plotted between s and r^2/t and W(u) and u and they are superimposed.
//from which we get
s1=0.52;
Wu1=2.96;
rt1=700000; u1=0.03;
Q=3600;                //discharge in cumec/day
T=Q*Wu1/(4*%pi*s1);
S=4*u1*T/rt1;
T=round(T);
mprintf("formation constant of acquifer:");
mprintf("\nT=%f cubic metre/day/m.\nS=%f.",T,S);
