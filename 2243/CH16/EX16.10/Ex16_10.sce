clc();
clear;
//Given :
v = 1500; // velocity of ultrasound in m/s
rt = 0.8; // recorded time in s
t = rt/2; // time in s
//Ultrasound velocity = D/t
D = v*t; // sea depth in m
printf("Depth = %d m",D);
