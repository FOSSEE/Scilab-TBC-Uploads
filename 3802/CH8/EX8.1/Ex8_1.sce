//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex8_1.sce

clc;
clear;
p=4;
s=24;
com_seg=24;
//winding detail calculation
pole_pitch=s/p;
c=com_seg;
printf("\n Number of coils=%d \n",c)
Cs=2*c;
printf("\n Number of coil sides=%d \n",Cs)
Yb1=Cs/p+1;
Yb2=Cs/p-1;
Yb=Yb1;   //choosing full pitch coil
printf("\n Back pitch=%d \n",Yb)
Yf1=Yb-2; //For progressive winding
Yf2=Yb+2; //For retrogressive winding
Yf=Yf1;
printf("\n Full pitch=%d \n",Yf)
//for progressive winding
Y=2;
Yc=1;
printf("\n Winding pitch=%d \n",Y)
printf("\n Commutator pitch=%d \n",Yc)
