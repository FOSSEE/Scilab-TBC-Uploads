//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex12_12.sce

//The input data taken from Example:12.11
clc;
clear;
Vl=400;
V=Vl/sqrt(3);
Z_R=complex(20*cosd(30),20*sind(30));
Z_Y=complex(40*cosd(60),40*sind(60));
Z_B=complex(10*cosd(-90),10*sind(-90));
Z_YR=((Z_R*Z_Y)+(Z_Y*Z_B)+(Z_B*Z_R))/Z_B;
Z_BY=((Z_R*Z_Y)+(Z_Y*Z_B)+(Z_B*Z_R))/Z_R;
Z_RB=((Z_R*Z_Y)+(Z_Y*Z_B)+(Z_B*Z_R))/Z_Y;
theta1=30;
theta2=-90;
theta3=150;
V_YR=complex(Vl*cosd(theta1),Vl*sind(theta1));
V_BY=complex(Vl*cosd(theta2),Vl*sind(theta2));
V_RB=complex(Vl*cosd(theta3),Vl*sind(theta3));
I_YR=V_YR/Z_YR;
I_BY=V_BY/Z_BY;
I_RB=V_RB/Z_RB;
I_R=I_YR-I_RB;
I_Y=I_BY-I_YR;
I_B=I_RB-I_BY;
printf("\n Line current I_R,I_Y,I_B values are,\n")
disp(I_R)
disp(I_Y)
disp(I_B)


