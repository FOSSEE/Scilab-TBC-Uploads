//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//EX3_16.sce

clc;
clear;
//from the mesh equations coefficient of I1,I2,and source is given below
a1=complex(4,-2);
b1=-complex(3,-2);
c1=complex(12,0);
a2=-complex(3,4);
b2=complex(5,3);
c2=complex(0);

del1=det([c1 b1;c2 b2]);
del2=det([a1 c1;a2 c2]);
del=det([a1 b1;a2 b2]);
I2=del2/del;
I1=del1/del;

V2=(2*I2)+((3*(-2*%i))*(I1-I2));
V2_mag=sqrt(real(V2)^2+imag(V2)^2);
V2_ang=atand(imag(V2)/real(V2));
printf("\n V2=%1.2f angle:%2.2f degree \n",V2_mag,V2_ang)
//Anawer vary dueto round off error
//Result:v2(t)=4.87*sqrt(2) sin(2t-66.04)
