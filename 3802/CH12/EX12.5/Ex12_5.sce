//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex12_5.sce

clc;
clear;
Vl=440;
z_mag=40;
z_angle=-30;
z=complex(z_mag*cosd(z_angle),z_mag*sind(z_angle));
Iph=Vl/z;
Iph_mag=sqrt(real(Iph)^2+imag(Iph)^2);
Iph_angle=atand(imag(Iph)/real(Iph));

printf("\nLine current of load:\t    Magnitude \t Angle(deg) \n")
I_R_mag=Iph_mag;
I_Y_mag=Iph_mag;
I_B_mag=Iph_mag;
I_R_angle=Iph_angle-0;
I_Y_angle=Iph_angle-120;
I_B_angle=Iph_angle+120;
printf("\n\t\t Ir in A \t%d \t %2.2f",I_R_mag,I_R_angle)
printf("\n\t\t Iy in A \t%d \t %2.2f",I_Y_mag,I_Y_angle)
printf("\n\t\t Ib in A \t%d \t %2.2f",I_B_mag,I_B_angle)

I_R=complex(I_R_mag*cosd(I_R_angle),I_R_mag*sind(I_R_angle))
I_Y=complex(I_Y_mag*cosd(I_Y_angle),I_Y_mag*sind(I_Y_angle))
I_B=complex(I_B_mag*cosd(I_B_angle),I_B_mag*sind(I_B_angle))
I_N=I_R+I_Y+I_B;
printf("\n The neutral current is %d A",I_N)


