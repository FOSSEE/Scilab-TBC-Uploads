clear;
clc;
r1=.1;
r2=.4;
r=r1+r2;
i=1e3/10;
ip=100*5/50;
ie=10;
e=45;
y=i-ie;
per=(ie*y-(10*i))/(i*10);
mprintf("the percentage R.E at 1000A =%dpercent",per*100);

