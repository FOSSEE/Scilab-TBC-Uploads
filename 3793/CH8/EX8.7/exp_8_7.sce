clear;
clc;
S=3000;
l=2000;
f=50;
//for case a
D=l/f;
Dpu=D/S;
mprintf("load frequency parameter is %.3f MW/Hz\n",D);
r=2;
betaa=Dpu+1/r;
mprintf("ARFC Parameter is %.4f pu MW/Hz\n",betaa);
ld=25;
ldemand=ld/S;
fd=-(ldemand/betaa);
mprintf("Static Frequency Drop is %.4f Hz\n",fd);
//for case b
s1=5000;
beta1=betaa/S*s1;
mprintf("ARFC Parameter on base of 5000MW is %.4f pu MW/Hz\n",beta1);
sb=10000;
delp1=ld/sb;
delp2=0;
beeta=betaa/S*sb;
beeta1=beta1/s1*sb;
sf=-(delp1/(beeta+beeta1));
tp=-(beeta1*delp1*sb)/(beeta+beeta1);
mprintf("Static frequency drop for command base of 10000MW is %.5f Hz\n",sf);
mprintf("Tie line power in %.4f MW\n",tp);
perf=sf/fd*100;
mprintf("Static frequency drop in control area 1 in pool operation is %.3f percentage\n",perf);
mprintf("Control area 2 supplies 50 percent of the load increase");


