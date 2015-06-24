//Chapter 15
//Example 15_1
//Page 384

clear;clc;

kw=10000;
pf=0.8;
v=33;
r=5;
x=10;

i2=kw*1000/sqrt(3)/v/1000/pf;
ip=i2*pf;
iq=i2*sind(acosd(pf));
v1=v*1000/sqrt(3);
im=231;
capacity=3*v1*im/1000;

printf("Load current = %d A \n", i2);
printf("Ip = %.2f A \n", ip);
printf("Iq = %.2f A \n", iq);
printf("Sending end voltage per phase = %d V \n", v1);
printf("Im = %d A \n", im);
printf("Capacity of synchrounous condenser = %d kVAR \n", capacity);

