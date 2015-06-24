clear;
clc;

l=.4;
Ft=.8;
Fd=8.2;
Tt=6;
Td=5;

Rf=Ft + (Fd*l);
mprintf("\n(a)Failure Rate = %.2f outages/year",Rf);

t=((Ft*Tt)+(Fd*Td*l))/Rf;
mprintf("\n(b)Down Time = %.3f Hours per outage",t);;

T=t*Rf;
mprintf("\n(c)Total Outage Time = %.1f Hours per year",T);;
