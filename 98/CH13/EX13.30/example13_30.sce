//Chapter 13
//Example 13_30
//Page 344

clear;clc;

l=[200 160 240 100 60 100 100 340 160 100];
r=0.02;
R=r.*l/100;
i=[100 40 15 25 35 25 5 15 75 95];
v=R.*i;
v1=250;
v2=250;

vck=v1-v(1)-v(5)-v(7);
vdm=vck-v(2)-v(4)+v(5);
vjg=v2+v(7)-v(10);
vlh=vjg+v(6)-v(5)-v(9);
vpf=vlh+v(4)-v(3)-v(8);

printf("Voltage acorss load CK = %.2f V \n\n", vck);
printf("Voltage acorss load DM = %.2f V \n\n", vdm);
printf("Voltage acorss load JG = %.2f V \n\n", vjg);
printf("Voltage acorss load LH = %.2f V \n\n", vlh);
printf("Voltage acorss load PF = %.2f V \n\n", vpf);


