//Ex:2.2
clc;
clear;
close;
r=39;//in ohms
v=9;//in volts
i=(v/r);//in Amps
printf("Current = %d mA",i*1000);
tol=0.1;//i.e, 10%
r_min=r-(tol*r);
i_max=v/r_min;
r_max=r+(tol*r);
i_min=v/r_max;
printf("\n Max.Current = %f mA & Min Current= %f mA",i_max*1000,i_min*1000);