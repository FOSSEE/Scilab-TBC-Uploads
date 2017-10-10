//Example 17_15
clc();
clear;
//To find the terminal potential of each battery
v=18         //Units in V
r=9           //Units in Ohms
i=v/r       //Units in A
r1=0.1     //Units in Ohms
v1=-i*r1      //Units in V
v2=24       //Units in V
v11=v1+v2        //Units in V
r2=0.9       //Units in Ohms
v3=i*r2     //Units in V
v4=6         //Units in V
v22=v3+v4      //Units in V   
printf("The Potential difference between d to c is=%.1f V",v11)
printf("\nThe potential difference between b to a is=%.1f V",v22)
