//chapter 17 Ex 9

clc;
clear;
close;
s1=5;s2=6;t1=7;t2=5;
difference=(t1+t2)/60;   //converting minutes into hours
dist=difference/(1/s1-1/s2);
printf("The required distance is %1.0f km",dist);
