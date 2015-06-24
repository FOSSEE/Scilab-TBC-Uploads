clear;
clc;
p=180;
p2=(20-16+(180*.1))/(.1+.12);
p1=p-p2;
t=.1*p1+20;
mprintf("loading of unit 1 P1=%dMW\nthe loading of unit 2 P2=%dMW\nincremental operating cost =%dRs/MWhr",p1,p2,t);
