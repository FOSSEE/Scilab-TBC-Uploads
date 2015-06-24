//Chapter 8
//Example 8_2
//Page 172

clear;clc;

v1=8;
v2=11;

k=(v2-v1)/v1;
v3=v2+(v2+v1)*k;
v=v1+v2+v3;
lv=sqrt(3)*v;
n=v*100/3/v3;

printf("k = %.2f kV \n\n", k);
printf("Voltage across third unit = %.2f kV \n\n", v3);
printf("Voltage between line and earth = %.2f kV \n\n", v);
printf("Line voltage = %.2f kV \n\n", lv)
printf("String efficiency = %.2f %% \n\n", n);
