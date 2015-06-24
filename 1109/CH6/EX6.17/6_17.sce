clear;
clc;
ZR=300;s=9;d=0.1
r=d/2;
Zof=276*log10(s/r);
Zoq=sqrt(ZR*Zof);
do=(s*2)/10^(Zoq/276);
printf("Diameter of wire used = %f cm",fix(do*10)/10);

