//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex12_7.sce

clc;
clear;
z1=complex(8,6);
z2=complex(6,8);
z3=complex(4,-3);
R_YR=z1;
R_BY=z2;
R_RB=z3;
Vl=440;

printf("\n(a)Delta connected load of phase sequence RYB:")
theta1=0;
theta2=-120;
theta3=120;
V_YR=complex(Vl*cosd(theta1),Vl*sind(theta1));
V_BY=complex(Vl*cosd(theta2),Vl*sind(theta2));
V_RB=complex(Vl*cosd(theta3),Vl*sind(theta3));
I_YR=V_YR/z1;
I_BY=V_BY/z2;
I_RB=V_RB/z3;
I_YR_mag=sqrt(real(I_YR)^2+imag(I_YR)^2);
I_BY_mag=sqrt(real(I_BY)^2+imag(I_BY)^2);
I_RB_mag=sqrt(real(I_RB)^2+imag(I_RB)^2);
I_YR_angle=atand(imag(I_YR)/real(I_YR));
I_BY_angle=atand(imag(I_BY)/real(I_BY))-180;
I_RB_angle=atand(imag(I_RB)/real(I_RB))+180;
printf("\nPhase current=     \tMagnitude\tAngle(deg) \n")
printf("\n\t Iyr in A \t %d \t     %2.2f",I_YR_mag,I_YR_angle)
printf("\n\t Iby in A \t %d \t     %2.2f",I_BY_mag,I_BY_angle)
printf("\n\t Irb in A \t %d \t     %2.2f",I_RB_mag,I_RB_angle)

I_R=I_YR-I_RB;
I_Y=I_BY-I_YR;
I_B=I_RB-I_BY;
I_R_mag=sqrt(real(I_R)^2+imag(I_R)^2);
I_Y_mag=sqrt(real(I_Y)^2+imag(I_Y)^2);
I_B_mag=sqrt(real(I_B)^2+imag(I_B)^2);
I_R_angle=atand(imag(I_R)/real(I_R));
I_Y_angle=atand(imag(I_Y)/real(I_Y))+180;
I_B_angle=atand(imag(I_B)/real(I_B))+180;
printf("\nLine current=      \tMagnitude\tAngle(deg) ")
printf("\n\t Ir in A \t %2.2f     %2.2f",I_R_mag,I_R_angle)
printf("\n\t Iy in A \t %2.2f \t    %2.2f",I_Y_mag,I_Y_angle)
printf("\n\t Ib in A \t %2.2f \t    %2.2f",I_B_mag,I_B_angle)

W_YR=(I_YR_mag)^2*real(z1);
W_BY=(I_BY_mag)^2*real(z2);
W_RB=(I_RB_mag)^2*real(z3);
printf("\n Toatal power dissipated:\n")
printf("\n\t W_YR=%d W",W_YR)
printf("\n\t W_BY=%d W",W_BY)
printf("\n\t W_RB=%d W",W_RB)


printf("\n\n(b)Delta connected load of phase sequence RBY:")
theta1=0;
theta2=120;
theta3=-120;
V_YR=complex(Vl*cosd(theta1),Vl*sind(theta1));
V_BY=complex(Vl*cosd(theta2),Vl*sind(theta2));
V_RB=complex(Vl*cosd(theta3),Vl*sind(theta3));
I_YR=V_YR/z1;
I_BY=V_BY/z2;
I_RB=V_RB/z3;
I_YR_mag=sqrt(real(I_YR)^2+imag(I_YR)^2);
I_BY_mag=sqrt(real(I_BY)^2+imag(I_BY)^2);
I_RB_mag=sqrt(real(I_RB)^2+imag(I_RB)^2);
I_YR_angle=atand(imag(I_YR)/real(I_YR));
I_BY_angle=atand(imag(I_BY)/real(I_BY));
I_RB_angle=atand(imag(I_RB)/real(I_RB));
printf("\nPhase current=     \tMagnitude\tAngle(deg) \n")
printf("\n\t Iyr in A \t %d \t     %2.2f",I_YR_mag,I_YR_angle)
printf("\n\t Iby in A \t %d \t     %2.2f",I_BY_mag,I_BY_angle)
printf("\n\t Irb in A \t %d \t     %2.2f",I_RB_mag,I_RB_angle)

I_R=I_YR-I_RB;
I_Y=I_BY-I_YR;
I_B=I_RB-I_BY;
I_R_mag=sqrt(real(I_R)^2+imag(I_R)^2);
I_Y_mag=sqrt(real(I_Y)^2+imag(I_Y)^2);
I_B_mag=sqrt(real(I_B)^2+imag(I_B)^2);
I_R_angle=atand(imag(I_R)/real(I_R));
I_Y_angle=atand(imag(I_Y)/real(I_Y))+180;
I_B_angle=atand(imag(I_B)/real(I_B))-180;
printf("\nLine current=      \tMagnitude\tAngle(deg) ")
printf("\n\t Ir in A \t %2.2f      %2.2f",I_R_mag,I_R_angle)
printf("\n\t Iy in A \t %2.2f \t    %2.2f",I_Y_mag,I_Y_angle)
printf("\n\t Ib in A \t %2.2f    %2.2f",I_B_mag,I_B_angle)

W_YR=(I_YR_mag)^2*real(z1);
W_BY=(I_BY_mag)^2*real(z2);
W_RB=(I_RB_mag)^2*real(z3);
printf("\n Toatal power dissipated:\n")
printf("\n\t W_YR=%d W",W_YR)
printf("\n\t W_BY=%d W",W_BY)
printf("\n\t W_RB=%d W",W_RB)
