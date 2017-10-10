//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex5_16.sce.

clc;
clear;
N=100;
a=10e-2;
n=20;
B=0.5;

omega=2*%pi*n;
A=a^2;
v=A*N*omega*B;

printf("\n(a)")
//theta=40*180*t=n*180 where n=0,1,2,3.....
//if we take n=2
V=v*sind(180*2);
printf("\n The instantaneous value of induced emf when plane of the coil is right angle to the field=%d volt \n",V)

printf("\n(b)")
//theta=n*180/2  where n=1,3,5,7.........
//if we take n=3
V=v*sind(180*3/2);
printf("\n The instantaneous value of induced emf when the plane of the coil is in the plane of the field=%2.1f volt",V)
