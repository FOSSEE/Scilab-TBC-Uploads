clc;
clear;
printf("\t\t\tChapter4_example5\n\n\n");
hc=6;
D=0.105;
k=0.3;
c=0.41;
sp_gr=2.1;
rou_water=62.4;
alpha=k/(sp_gr*rou_water*c);
printf("\nThe diffusivity of the soil is %.2e sq.ft/hr",alpha);
t=3*30*24;
printf("\nTime in hours is %d hr",t);
// Bi_sqrt(Fo) is infinite
T_inf=10;
Ts=10;
T=32;
T_i=70;
dimensionless_temp=(T-T_i)/(T_inf-T_i);
printf("\nThe dimensionless temperature is %.4f",dimensionless_temp);
variable_fig4_12=0.38; //The value of x/(2*(alpha*t)^0.5) from figure 4.12
x=2*sqrt(alpha*t)*variable_fig4_12;
printf("\nThe depth of the freeze line in soil is %.2f ft",x);
