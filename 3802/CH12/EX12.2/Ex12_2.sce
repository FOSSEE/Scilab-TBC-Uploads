//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex12_2.sce

clc;
clear;
z=complex(6,8);
Vl=110;
printf("\nPhase current of the load:   Magnitude \t Angle(deg) \n")
I_YR=complex(Vl*cosd(0),Vl*sind(0))/(z);
I_BY=complex(Vl*cosd(-120),Vl*sind(-120))/(z);
I_RB=complex(Vl*cosd(120),Vl*sind(120))/(z);
I_YR_mag=sqrt(real(I_YR)^2+imag(I_YR)^2);
I_BY_mag=sqrt(real(I_BY)^2+imag(I_BY)^2);
I_RB_mag=sqrt(real(I_RB)^2+imag(I_RB)^2);
I_YR_angle=atand(imag(I_YR)/real(I_YR));
I_BY_angle=atand(imag(I_BY)/real(I_BY))-180;
I_RB_angle=atand(imag(I_RB)/real(I_RB));
printf("\n\t\t Iyr in A \t %d \t %2.2f",I_YR_mag,I_YR_angle)
printf("\n\t\t Iby in A \t %d \t %2.2f",I_BY_mag,I_BY_angle)
printf("\n\t\t Irb in A \t %d \t %2.2f",I_RB_mag,I_RB_angle)

printf("\nLine current of the load:    Magnitude \t Angle(deg) \n")
I_LR_mag=sqrt(3)*I_YR_mag;
I_LY_mag=sqrt(3)*I_BY_mag;
I_LB_mag=sqrt(3)*I_RB_mag;
I_LR_angle=I_YR_angle-30;
I_LY_angle=I_BY_angle-30;
I_LB_angle=I_RB_angle-30;
printf("\n\t\t Ilr in A \t %2.2f \t %2.2f",I_LR_mag,I_LR_angle)
printf("\n\t\t Ily in A \t %2.2f \t %2.2f",I_LY_mag,I_LY_angle)
printf("\n\t\t Ilb in A \t %2.2f \t %2.2f",I_LB_mag,I_LB_angle)

