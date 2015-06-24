

//example 5.14
//calculate formation constant of acquifer using Jacob's method
clc;funcprot(0);
//given
Q=2500;      //discharge(l/min)
r=60;        //distance of observation well from acquifer
tmin=[1 1.5 2 2.5 3 4 5 6 8 10 12 14 18 24 30 40 50 60 80 100 120 150 180 210 240];  //time in minutes
s=[0.2 0.26 0.3 0.33 0.36 0.41 0.45 0.48 0.53 0.56 0.59 0.62 0.66 0.71 0.75 0.80 0.83 0.86 0.91 0.95 0.98 1.03 1.05 1.08 1.10];  //drawdown
for i=1:25
    tday(i)=tmin(i)/(60*24);
end
//from the graph between s and t we get
ds=0.38;
Q=3600;      //discharge in cumec/day
T=2.303*Q/(4*%pi*ds);
//extending the straight line we get
to=0.00024;
S=2.25*T*to/r^2;
mprintf("formation constant of acquifer:");
mprintf("\nT=%i cubic metre/day/m.\nS=%f.",T,S);

