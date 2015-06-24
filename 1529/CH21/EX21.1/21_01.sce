//Chapter 21, Problem 1
clc;
n1=500;                 //primary turns
n2=3000;                //secondary turns
v1=240;                 //primary voltage
v2=(v1*n2)/n1;          //secondary voltage
printf("Secondary voltage = %f V",v2);
