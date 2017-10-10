//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex3_6.sce

clc;
clear;
G=3;     //conductance in mho
L=1/4;    //Inductor value in henry
C=3;      //capacitor value in farad
omega=2;    //taken from i(t)
XL=1/(omega*L);
XC=(omega*C);
Y=complex(G,XC-XL);
I=complex(15,0);
V=I/Y;
BL= complex(0,-2);
I_L=V*BL;
I_L_mag=sqrt(real(I_L)^2+imag(I_L)^2);
I_L_angle=atand(imag(I_L)/real(I_L))-180;
printf("\n The current through inductor=%d angle:%2.1f degree \n",I_L_mag,I_L_angle)
//result: iL(t)=6 cos(2t-143.1)
