//Chapter 12
//page no 539
//given
clc;
clear all;
M=1;         //number of solition Collisions
N=1;        // number of solition Collisions
x=2;         
y=1/2;
p=3;
p2=4;
Tb=100;         //ps
l=1;            //difference in wavelength in nm 
D=7*10^-2;      //ps/nm^2*km
Zr=y*y*(Tb/l/l/D);      //regeration spacing in km
printf("\n Zr = %0.0f km\n",Zr);
P=(p-1)*N+(p-2)*(p-1)*M/2;
printf("\n P(%0.0f) =%0.0f",p,P);      //result number of  Collisions
P2=(p2-1)*N+(p2-2)*(p2-1)*M/2;      
printf("\n P(%0.0f) =%0.0f",p2,P2);     //result number of  Collisions
