clear;
//clc();

//at point a

pe=30;
pmax=60;
del1=asin(pe/pmax);

//by hit and trial methid

del2=60.4;
p1=pmax*sind(del2);

per_load=p1-pe;
printf("The maximum permissible sudden increase of load is:%.2f MW",per_load);
