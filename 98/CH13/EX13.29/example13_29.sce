//Chapter 13
//Example 13_29
//Page 344

clear;clc;

v1=250;
v2=250;

r=[0.015 0.01 0.006 0.014 0.02 0.02 0.024 0.02];
i=[50 30 30 6 14 10 36 60];

v=r.*i;

vck=v1-v(1)-v(5)+v(6);
vdm=vck-v(2)-v(3)+v(4);
vjg=v2-v(6)-v(8);
vlh=vjg+v(5)-v(4)-v(7);

printf("Voltage acorss load CK = %.2f V \n\n", vck);
printf("Voltage acorss load DM = %.2f V \n\n", vdm);
printf("Voltage acorss load JG = %.2f V \n\n", vjg);
printf("Voltage acorss load LH = %.2f V \n\n", vlh);
