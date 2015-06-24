//Chapter 22
//Example 22_6
//Page 538

clear;clc;

v1=0.4;
v2=11;
v=400;
i1=500;
i2=5;

lc=sqrt(3)*i2;
pap=sqrt(3)*v*i1;
i=pap/sqrt(3)/v2/1000;

ratio=i/lc;

printf("Line current of delta connected CTs on %d V side = %.2f A \n\n", v1, lc);
printf("Phase current of star connected CTs on %d V side = %.2f A \n\n", v2, lc);
printf("The line current on the %d V side = %.2f A \n\n",v2, i);
printf("Turn ratio of CTs on %d V side = %.1f:1 \n\n", v2, ratio);
