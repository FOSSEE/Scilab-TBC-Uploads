clear;
clc;
x=.23;
r=3750e3;
v=6600;
res=.866;
x1=x*(v^2)/r;
z=sqrt((res^2)+(x1^2));
i=1.1*v/(sqrt(3)*z);
f=res/x1;
x=1.38;
i=round(i/100)*100
is=sqrt(2)*x*i;
is=round(is/10)*10;
mprintf("initial short circuit current=%dA \n peak short circuit current=%dA",i,is);
