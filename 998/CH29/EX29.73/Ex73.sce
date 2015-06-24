//Ex:73
clc;
clear;
close;
i=28;// in degree
v_a=1.61;// in km/s
v_c=3.07;// in km/s
x=cos(i*3.14/180);
dv=sqrt(v_a^2+v_c^2-2*v_a*v_c*x);
printf("The velocity change=%f km/s",dv);