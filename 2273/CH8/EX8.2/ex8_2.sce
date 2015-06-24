//find max safe working voltage and string efficiency
clear;
clc;
//soltion
//given
k=0.08;//ratio
V3=15;
V1=V3/(1+3*k+k*k);
V2=V1*(1+k);
V=V1+V2+V3;
printf("Max and safe working voltage= %.2f kV\n",V);
Se=V*100/(3*V3);
printf("String efficiency %.2f percent",Se);
