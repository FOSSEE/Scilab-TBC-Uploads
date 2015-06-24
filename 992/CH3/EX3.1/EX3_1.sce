
//Exa:3.1
clc;
clear;
close;
//Given:
w1=4.8;//in KHz
v1=2.4;
v2=7.2;
fm=0.5;//in KHz
w2=w1*v2/v1;//in KHz
v3=10;
w3=w1*v3/v1;
m1=w1/fm;
m2=w2/fm;
m3=w3/fm;
printf("\n 1)deviation = %f KHz and modulation index = %f",w1,m1);
printf("\n 2)deviation = %f KHz and modulation index = %f",w2,m2);
printf("\n 3)deviation = %f KHz and modulation index = %f",w3,m3);