//Chapter 3
//page no 67
//given
clc;
clear all;
Pin=1;      //microW
W=15;           //in degree
NA=sin(W*%pi/180);
NAA=0.26;           //NA=0.2588190 which is rounded off
C_c=(NAA)^2;
printf("\n Coupling coefficient is  %0.4f  \n",C_c);
Pf=C_c*Pin;
printf("\n Power coupled into fiber  %0.1f  nW\n",Pf*1000);

