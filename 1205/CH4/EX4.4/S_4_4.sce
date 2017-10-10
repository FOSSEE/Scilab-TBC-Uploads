clc;

//At equillibrium equations are +-> sum Fx=0, +sum(M_A)=0, +sum(M_B)=0

//Sum Fx=0 gives, 
Ax=600*cos(10*%pi/180)-375*cos(20*%pi/180);//N
printf("Ax=%.2f kN   \n",Ax);


//Sum Fy=0 gives, Ay-1600 N -(375 N)sin(20 degree)-(600 N)sin(10 degree)=0
Ay=600*sin(10*%pi/180)+375*sin(20*%pi/180)+1600;//N
printf("Ay=%.2f kN \n",Ay);

A=[Ax,Ay];//N Reaction force at A
A=norm(A);//N Magnitude of A
theta=atan(Ay/Ax);//Radian , Angle made by A with +ve X axis
theta=theta*180/%pi;//Degrees
printf("A=%.0f kN  Theta=%.1f\n",A,theta);
//+sum(M_A)=0 gives M_A-(375 N)cos(20 degree)(6 m)+(600 N)cos(10 degree)(6 m)=0, 
M_A=-600*cos(10*%pi/180)*6+375*cos(20*%pi/180)*6;//N.m
printf("M_A=%.0f kN  +ve sign shows reaction is directed as assumed \n",M_A);
