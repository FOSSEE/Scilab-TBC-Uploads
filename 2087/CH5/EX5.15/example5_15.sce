//example 5.15
//calculate formation constant of acquifer using Chow's method
clc;funcprot(0);
//given
Q=2500;      //discharge(l/min)
r=60;        //distance of observation well from acquifer
tmin=[1 1.5 2 2.5 3 4 5 6 8 10 12 14 18 24 30 40 50 60 80 100 120 150 180 210 240];  //time in minutes
s=[0.2 0.26 0.3 0.33 0.36 0.41 0.45 0.48 0.53 0.56 0.59 0.62 0.66 0.71 0.75 0.80 0.83 0.86 0.91 0.95 0.98 1.03 1.05 1.08 1.10];  //drawdown
for i=1:25
    tday(i)=tmin(i)/(60*24);
end
//graph is plotted between s and t
//point P is choosen on it whose ordinate is:
s1=0.45;
t=0.00347;
ds=0.38;             //for one log cycle of time
Fu=s1/ds;
//from fig 5.43
//or using relation
Wu=2.303*Fu;  
u=0.035;    //from table 5.2
Q=3600;          //discharge in cumec/day
T=Q*Wu/(4*%pi*s1);
S=4*u*t*T/r^2;
mprintf("formation constant of acquifer:");
mprintf("\nT=%i cubic metre/day/m.\nS=%f.",T,S);

