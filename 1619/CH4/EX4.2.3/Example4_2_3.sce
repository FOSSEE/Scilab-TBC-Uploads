//Example 4.2.3. pahe 4.15

clc;
clear;
e= 1.602*10^-19;
h= 6.625*10^-34;
v= 3*10^8;
n=0.65;
I= 10*10^-6;
lamda= 900*10^-9;
R= n*e*lamda/(h*v);
Po= 0.5*10^-6;
Ip= Po*R;
M= I/Ip;
printf("The multiplication factor is %.2f",M);
