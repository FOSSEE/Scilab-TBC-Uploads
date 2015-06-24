clear;
//clc();

//pre fault condtion

xg=0.3;
xl=0.5;
x=xg +xl*0.5;..// since the line reactances are in parallel
pe1=1;
e=1.4;
vc=1;
ps=1;
pmax1=e*vc/x;

del0=asin(ps/pmax1);

//after star delta conversion

xb=0.075;
xc=0.175;
xe=0.0525;
xa=0.375;

xac=xa+xc+(xa*xc/xe);

pmax2=e*vc/xac;

x1=xg+xl;
pmax3=e*vc/x1;

pe3=1;
del2=asin(pe3/pmax3);
delm=3.14-del2;

delc=acosd((ps*(delm-del0)-pmax2*cos(del0)+ pmax3*cos(delm))/(pmax3-pmax2));
printf("the critical clearing angle is:%.2f deg",delc);
