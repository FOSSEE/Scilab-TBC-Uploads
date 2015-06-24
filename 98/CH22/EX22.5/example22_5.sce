//Chapter 22
//Example 22_5
//Page 538

clear;clc;

v1=220;
v2=11000;
v=220;
i1=600;
i2=5;

lc=sqrt(3)*i2;
pap=sqrt(3)*v*i1;
i=pap/sqrt(3)/v2;

ratio=i/lc;

printf("Line current of delta connected CTs on %d V side = %.2f A \n\n", v1, lc);
printf("Phase current of star connected CTs on %d V side = %.2f A \n\n", v2, lc);
printf("The line current on the %d V side = %.2f A \n\n",v2, i);
printf("Turn ratio of CTs on %d V side = %.3f:1 \n\n", v2, ratio);
