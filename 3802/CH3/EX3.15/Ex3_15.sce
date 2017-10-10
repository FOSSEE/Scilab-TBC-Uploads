//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex3_15.sce

clc;
clear;
V1=complex(12,0);
//current source and its parallel impedance gives the voltage source
V2=complex(5*cosd(-30),5*sind(-30))*complex(6,-3);
//for loop1 , the coefficient of I1 ,I2 and source is given below
a1=complex(10+6,15);
b1=-complex(10,15);
c1=V1;
//for loop2 , the coefficient of I1 ,I2 and source is given below
a2=-complex(10,15);
b2=complex(19,12);
c2=-V2;
del2=det([a1 c1;a2 c2]);
del=det([a1 b1;a2 b2]);
I2=del2/del;
I2_mag=sqrt(real(I2)^2+imag(I2)^2);
I2_ang=atand(imag(I2)/real(I2))+180;
printf("\n Current through the 3 ohm resistor=%1.3f angle:%3.2f degree \n",I2_mag,I2_ang)
