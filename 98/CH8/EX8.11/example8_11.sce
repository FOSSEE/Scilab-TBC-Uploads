//Chapter 8
//Example 8_11
//Page 179

clear;clc;

n=3;
shunt=0.2;
line=0.1;
lower=0.3;

v2=15.4/15.5;
v3=12-11*0.993;
v=1+v2+v3;
eff=v/n/v3;

printf("V2 = %.3f*V1 \n", v2);
printf("V3 = %.3f*V1 \n", v3);
printf("Voltage between conductor and earth = %.2f*V1 \n", v);
printf("String efficiency = %d %% \n\n", eff*100);

