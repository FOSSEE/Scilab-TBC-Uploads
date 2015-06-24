//Chapter 8
//Example 8_3
//Page 172

clear;clc;

ins=3;
v3=17.5;
k=1/8;
v1=v3/(1+3*k+k^2);
v2=(1+k)*v1;
v=v1+v2+v3;

n=v*100/3/v3;

printf("Voltage across first unit = %.2f kV \n\n", v1);
printf("Voltage across second unit = %.2f kV \n\n", v2);
printf("Voltage between line and earth = %.2f kV \n\n", v);
printf("String efficiency = %.2f %% \n\n", n);
