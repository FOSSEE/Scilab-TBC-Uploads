clear;
clc;

//solving for prt (c) only

R=3;
r=1;
V=60;


a=sqrt(R/r);
r1=a*r;

mprintf("\n (c) r1= %.3f cm", r1);

V1=V*((a)/(1+a));
mprintf("\n     V1 voltage at intersheath= %.2f cm", V1);

b=2/(1+a);
mprintf("\n     ratio of max electric stress with and without intersheath= %.3f cm", b);




