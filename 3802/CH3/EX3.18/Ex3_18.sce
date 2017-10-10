//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex3_18.sce

clc;
clear;
//Below values are taken from the given circuit (fig.3.27)
Z1=complex(6,0);
Z2=complex(10,15);
Z3=complex(6,-3);

Zs=(Z1*Z2)/(Z1+Z2)+Z3;
V=12;
Va=V-(V/(Z1+Z2))*real(Z3);
Is=complex(5*cosd(-30),5*sind(-30));
Vb=Is*Z3;
Voc=Va-Vb;
I=Voc/(Zs+3);
I_mag=sqrt(real(I)^2+imag(I)^2);
I_ang=atand(imag(I)/real(I))+180;
printf("\n The required current= %1.4f angle:%3.2f degree \n",I_mag,I_ang)
