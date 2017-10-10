//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex3_13.sce

clc;
clear;

//from the figure 3.25 the below values are taken
Z1=complex(1.2,1.6);
Z2=complex(1.0,-1.75);
Z12=complex(6,8);

V1=complex(110,0);
V2=complex(110*cosd(-5),110*sind(-5));

//VA is calculated from the nodal equation of node A
VA=((V1/Z1)+(V2/Z2))/(1/Z1 + 1/Z2 + 1/Z12);
VA_mag=sqrt(real(VA)^2+imag(VA)^2);
VA_ang=atand(imag(VA)/real(VA));
printf("\n  V3=%3.0f angle:%1.2f degree \n",VA_mag,VA_ang)

I1=(V1-VA)/Z1;
I1_mag=sqrt(real(I1)^2+imag(I1)^2);
I1_ang=atand(imag(I1)/real(I1))-180;
printf("\n  I1=%1.2f angle:%3.2f degree \n",I1_mag,I1_ang)

I2=(V2-VA)/Z2;
I2_mag=sqrt(real(I2)^2+imag(I2)^2);
I2_ang=atand(imag(I2)/real(I2));
printf("\n  I2=%2.0f angle:%2.0f degree \n",I2_mag,I2_ang)

I3=(VA)/Z12;
I3_mag=sqrt(real(I3)^2+imag(I3)^2);
I3_ang=atand(imag(I3)/real(I3));
printf("\n  I3=%2.2f angle:%2.1f degree \n",I3_mag,I3_ang)

//Answer vary dueto round off error




