//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex12_13.sce

//The input data taken from Example:12.11
clc;
clear;
Vl=400;
V=Vl/sqrt(3);
Z_R=complex(20*cosd(30),20*sind(30));
Z_Y=complex(40*cosd(60),40*sind(60));
Z_B=complex(10*cosd(-90),10*sind(-90));
theta1=30;
theta2=-90;
theta3=150;
V_YR=complex(Vl*cosd(theta1),Vl*sind(theta1));
V_BY=complex(Vl*cosd(theta2),Vl*sind(theta2));
V_RB=complex(Vl*cosd(theta3),Vl*sind(theta3));

I_R=((V_YR*Z_B)-(V_RB*Z_Y))/((Z_R*Z_Y)+(Z_Y*Z_B)+(Z_B*Z_R));
I_Y=((V_BY*Z_R)-(V_YR*Z_B))/((Z_R*Z_Y)+(Z_Y*Z_B)+(Z_B*Z_R));
I_B=((V_RB*Z_Y)-(V_BY*Z_R))/((Z_R*Z_Y)+(Z_Y*Z_B)+(Z_B*Z_R));
printf("\n Line current I_R , I_Y , I_B values are,\n")
disp(I_R)
disp(I_Y)
disp(I_B)
