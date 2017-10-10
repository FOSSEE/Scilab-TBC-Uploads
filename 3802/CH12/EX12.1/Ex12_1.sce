//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex12_1.sce

clc;
clear;
z=complex(3,4);
Vl=120;
printf("\n  Line current of load:  Magnitude \t Angle(deg) \n")
I_R=complex(Vl*cosd(0),Vl*sind(0))/(sqrt(3)*z);
I_Y=complex(Vl*cosd(-120),Vl*sind(-120))/(sqrt(3)*z);
I_B=complex(Vl*cosd(120),Vl*sind(120))/(sqrt(3)*z);
I_R_mag=sqrt(real(I_R)^2+imag(I_R)^2);
I_Y_mag=sqrt(real(I_Y)^2+imag(I_Y)^2);
I_B_mag=sqrt(real(I_B)^2+imag(I_B)^2);
I_R_angle=atand(imag(I_R)/real(I_R));
I_Y_angle=atand(imag(I_Y)/real(I_Y))-180;
I_B_angle=atand(imag(I_B)/real(I_B));
printf("\n\t Ir in A:\t %2.2f  \t  %2.2f",I_R_mag,I_R_angle)
printf("\n\t Iy in A:\t %2.2f  \t  %2.2f",I_Y_mag,I_Y_angle)
printf("\n\t Ib in A:\t %2.2f  \t  %2.2f",I_B_mag,I_B_angle)
//The line current of alternator  is same as the line or phase current of load 

printf("\n  Line current of alternator:  Magnitude  Angle(deg) \n")
I_R=complex(Vl*cosd(0),Vl*sind(0))/(sqrt(3)*z);
I_Y=complex(Vl*cosd(-120),Vl*sind(-120))/(sqrt(3)*z);
I_B=complex(Vl*cosd(120),Vl*sind(120))/(sqrt(3)*z);
I_R_mag=sqrt(real(I_R)^2+imag(I_R)^2);
I_Y_mag=sqrt(real(I_Y)^2+imag(I_Y)^2);
I_B_mag=sqrt(real(I_B)^2+imag(I_B)^2);
I_R_angle=atand(imag(I_R)/real(I_R));
I_Y_angle=atand(imag(I_Y)/real(I_Y))-180;
I_B_angle=atand(imag(I_B)/real(I_B));
printf("\n\t Ir in A:        \t %2.2f \t %2.2f",I_R_mag,I_R_angle)
printf("\n\t Iy in A:        \t %2.2f \t %2.2f",I_Y_mag,I_Y_angle)
printf("\n\t Ib in A:       \t %2.2f \t %2.2f",I_B_mag,I_B_angle)
