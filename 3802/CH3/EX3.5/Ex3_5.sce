//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex3_5.sce

clc;
clear;
R=2;
L=2;
C=1/12;
omega=3;
XL=omega*L;
XC=1/(omega*C);
Z=complex(R,XL-XC);
Vl=12*sqrt(2);
theta=30;
V=complex(Vl*cosd(theta),Vl*sind(theta));
I=V/Z;
I_mag=sqrt(real(I)^2+imag(I)^2);
I_angle=atand(imag(I)/real(I));
printf("\n Current flow through the given circuit=%d angle:%d degree \n",I_mag,I_angle)

XL=complex(0,6);
V_L=I*XL;
V_L_mag=sqrt(real(V_L)^2+imag(V_L)^2);
V_L_angle=atand(imag(V_L)/real(V_L));
printf("\n Voltage across the inductance=%d angle:%2.0f degree \n",V_L_mag,V_L_angle)
//result:Vl(t)=36 sin(wt+75) , i(t)=6 sin(wt-15)
