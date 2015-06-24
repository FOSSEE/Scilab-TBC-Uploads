//Chapter 3
//page no 67
//given
clc;
clear all;
n=0.02;         //in percentage
W=20;           //in degree
Vf=1.5;         //in Volts
If=20;          //in mAmps
Pin=If*Vf;
printf("\n Power coupled into fiber ,Pin = %0.0f  mW\n",Pin);
Po=n*Pin;
printf("\n Output Power of the optical source is   %0.1f  mW\n",Po);
///from nc=20 degree
C_c=(sin(W*%pi/180))^2;
Pf=C_c*Po
printf("\n Optical power coupled into fibre is ,Pf = %0.0f  microW\n",Pf*1000);

