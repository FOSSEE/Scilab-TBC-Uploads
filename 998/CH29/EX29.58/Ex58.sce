//Ex:58
clc;
clear;
close;
a=20000;//apogee in km
b=16000;//perigee in km
x=2*a;//sum of apogee and perigee
B=-40000;
A=1
C=256000000;
r_a1=(-B+sqrt(B^2-(4*A*C)))/2;
printf("The apogee distance=%d km",r_a1);
r_p1=x-r_a1;
printf("\n The perigee distance=%d km",r_p1);