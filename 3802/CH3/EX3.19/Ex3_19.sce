//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex3_19.sce

clc;
clear;
//Below values are taken from the given circuit (fig.3.27)
Z1=complex(6,0);
Z2=complex(10,15);
Z3=complex(6,-3);
Zs=(Z1*Z2)/(Z1+Z2)+Z3;
Vs=complex(12,0);
Is=complex(5*cosd(-30),5*sind(-30));

//for loop1 , the coefficient of I2 ,Isc and source is given below
a1=Z1+Z2;
b1=Z1;
c1=Vs;
//for loop2 , the coefficient of I1 ,I2 and source is given below
a2=Z2;
b2=-Z3;
c2=Is*Z3;
del2=det([a1 c1;a2 c2]);
del=det([a1 b1;a2 b2]);

Isc=del2/del;
Ys=1/Zs;
I=(Isc/Ys)/((1/Ys)+3);
I_mag=sqrt(real(I)^2+imag(I)^2);
I_ang=atand(imag(I)/real(I))+180;
printf("\n Current through the 3 ohm resistor= %1.4f angle:%3.2f degree \n",I_mag,I_ang)
