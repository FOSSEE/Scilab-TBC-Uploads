//Chapter 3
//Example 3_31
//Page 64

clear;clc;

max_l=60000;
min_l=20000;
peak_l=50000;
lf=1;
n_steam=0.6;

s=poly(0,"s");
p=333*s^2+24000*s-338000;
r=roots(p);
x=r(1);
y=40000*round(x)/24;
steam_capacity=max_l-y;

printf("x=%d \n", x);
printf("y=%d kW \n", y);
printf("Capacity of steam plant = %d kW \n", steam_capacity);

