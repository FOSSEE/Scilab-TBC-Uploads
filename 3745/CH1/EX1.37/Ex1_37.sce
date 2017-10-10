// Ex 37 Page 380

clc;clear;close;
// Given
Wh=250;//W
We=100;//W
N=1000/60;//rps

A=Wh/N;//constant
B=We/N**2;//constant
Wnew=1/2*(Wh+We);//W
//Wnew=A*N1+B*N1**2
p=[B,A,-Wnew];//polynomial for N1
N1=roots(p);//rps
N1=N1(2)*60;//rpm//discarding -ve value
printf("New speed will be %.f rpm",N1)
