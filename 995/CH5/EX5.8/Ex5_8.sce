//Ex:5.8
clc;
clear;
close;
dV_gs=0.025;
g_fs=-0.5;
dI_d=dV_gs*g_fs;//in mA
I_d1=50*10^-3;//in mA
I_d2=dI_d+I_d1;
printf("Change in drain current = %f A",dI_d);
printf("\nNew value of drain current = %f A",I_d2);