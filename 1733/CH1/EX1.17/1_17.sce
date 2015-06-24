//1.17
clc;
l=2*10^-3;
A=12*10^-4;
the_cond=220;
the_res=l/(the_cond*A);
T=4; //T=T2-T1
P=T/the_res;
printf("Maximum loss which can be handled by module= %.2f W", P)