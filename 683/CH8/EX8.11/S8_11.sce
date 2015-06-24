// sum 8-11
clc;
clear;
L=1180;
W=40*(10^3);
Nf=2;
Ng=8;
E=207*(10^3);
//sigut is ultimate strength
sigut=1400;
FOS=2;
//siga= allowable yield strength of the material
siga=1400/2;
//sigbf=bending strength in full length
sigbf=700;
b=75;
t=((4.5*W*L)/(((3*Nf)+(2*Ng))*sigbf))^(0.5);
t=14;
I=(Nf*b*(t^3))/12;
Wf=(3*Nf*W)/((3*Nf)+(2*Ng));
del=(Wf*(L^3))/(48*E*I);


 // printing data in scilab o/p window
 printf("t is %0.0f mm ",t);
 printf("\n Wf is %0.0f N ",Wf);
 printf("\n I is %0.0f mm^4 ",I);
 printf("\n del is %0.1f mm ",del);