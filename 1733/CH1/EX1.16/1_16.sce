//1.16
clc;
l=0.2;
w=0.01;
d=0.01;
the_cond=220;
the_res=l/(the_cond*w*d);
printf("Thermal resistance = %.3f degree C/W", the_res)
T1=30;
P=3;
T2=P*the_res+T1;
printf("\nTemperature of the surface = %.2f degree C", T2)
