//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex3_17.sce

clc;
clear;
//Below values are taken from the given circuit (fig.3.29)
Z1=complex(5,-5);
Z2=complex(5,-5);
Z3=complex(10,10);
V=complex(100,0);

I=V/(Z1+Z2);
Vab=I*Z2;
Zs=(Z1*Z2)/(Z1+Z2)+Z3;
V_AB=(Vab*real(Z3))/Zs;
V_AB_mag=sqrt(real(V_AB)^2+imag(V_AB)^2);
V_AB_ang=atand(imag(V_AB)/real(V_AB));
printf("\n V_AB=%2.2f angle:%2.2f degree \n",V_AB_mag,V_AB_ang)

