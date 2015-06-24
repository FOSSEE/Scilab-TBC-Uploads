//1.23
clc;
t_off=50*10^-6;
R1=10;
a=log(2);
C=t_off/(a*R1)*10^6;
printf("The value of C= %.2f uF",C)