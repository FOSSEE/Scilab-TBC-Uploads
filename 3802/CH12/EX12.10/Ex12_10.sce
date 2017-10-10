//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex12_10.sce

clc;
clear;
Z_R=complex(8,6);
Z_Y=complex(8,-6);
Z_B=complex(5,0);
Z_N=complex(0.5,1);
Y_R=1/Z_R;
Y_Y=1/Z_Y;
Y_B=1/Z_B;
Y_N=1/Z_N;
E_R=220;
E_Y=220;
E_B=220;
theta1=0;
theta2=-120;
theta3=120;
V_R=complex(E_R*cosd(theta1),E_R*sind(theta1));
V_Y=complex(E_Y*cosd(theta2),E_Y*sind(theta2));
V_B=complex(E_B*cosd(theta3),E_B*sind(theta3));
V_NN_dash=((V_R*Y_R)+(V_Y*Y_Y)+(V_B*Y_B))/(Y_R+Y_Y+Y_B+Y_N);

V_R_dash=V_R-V_NN_dash;
V_Y_dash=V_Y-V_NN_dash;
V_B_dash=V_B-V_NN_dash;
V_R_dash_mag=sqrt(real(V_R_dash)^2+imag(V_R_dash)^2);
V_Y_dash_mag=sqrt(real(V_Y_dash)^2+imag(V_Y_dash)^2);
V_B_dash_mag=sqrt(real(V_B_dash)^2+imag(V_B_dash)^2);
V_R_dash_angle=atand(imag(V_R_dash)/real(V_R_dash));
V_Y_dash_angle=atand(imag(V_Y_dash)/real(V_Y_dash))+180;
V_B_dash_angle=atand(imag(V_B_dash)/real(V_B_dash))+180;
printf("\n Load phase voltages: Magnitude\tAngle(deg)")
printf("\n     For R phase\t%3.2f\t%0.3f",V_R_dash_mag,V_R_dash_angle)
printf("\n     For Y phase\t%3.2f\t%3.2f",V_Y_dash_mag,V_Y_dash_angle)
printf("\n     For B phase\t%3.2f\t%3.2f",V_B_dash_mag,V_B_dash_angle)
//For V_NN_dash value , the answer given in the book is wrong.So load phase voltage vary from the book answer.
//Also V_R_dash angle is not 0.168. It is negative angle that is -0.193
I_R=V_R_dash*Y_R;
I_Y=V_Y_dash*Y_Y;
I_B=V_B_dash*Y_B;
I_N=V_NN_dash*Y_N;
I_R_mag=sqrt(real(I_R)^2+imag(I_R)^2);
I_Y_mag=sqrt(real(I_Y)^2+imag(I_Y)^2);
I_B_mag=sqrt(real(I_B)^2+imag(I_B)^2);
I_N_mag=sqrt(real(I_N)^2+imag(I_N)^2);
I_R_angle=atand(imag(I_R)/real(I_R));
I_Y_angle=atand(imag(I_Y)/real(I_Y))+360;
I_B_angle=atand(imag(I_B)/real(I_B))+180;
I_N_angle=atand(imag(I_N)/real(I_N))+180;
printf("\n\n Load phase current: Magnitude\tAngle(deg)")
printf("\n      For R phase\t%3.2f\t%0.3f",I_R_mag,I_R_angle)
printf("\n      For Y phase\t%3.2f\t%3.2f",I_Y_mag,I_Y_angle)
printf("\n      For B phase\t%3.2f\t%3.2f",I_B_mag,I_B_angle)
printf("\n      For Neutral\t%3.2f\t%3.2f",I_N_mag,I_N_angle)


