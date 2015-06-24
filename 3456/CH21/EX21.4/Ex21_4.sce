//Example 21.4
//Grinding Processes
//Page No. 703
clc;clear;close;

U=40;                    //in GPa
uw=0.3;                    //in m/s
b=1.2;                    //in mm
v=30;                    //in m/s
d=0.05;                    //in mm
b=b*10^-3;                   //conversion to m
d=d*10^-3;                     //conversion to m
U=U*10^9;                     //conversion to Pa
M=uw*b*d;
P=U*M;
F=P/v;
printf('Tangential force = %g N',F);
