//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex12_11.sce

clc;
clear;
Vl=400;
V=Vl/sqrt(3);
Z_R=complex(20*cosd(30),20*sind(30));
Z_Y=complex(40*cosd(60),40*sind(60));
Z_B=complex(10*cosd(-90),10*sind(-90));
Y_R=1/Z_R;
Y_Y=1/Z_Y;
Y_B=1/Z_B;
theta1=0;
theta2=-120;
theta3=120;
V_R=complex(V*cosd(theta1),V*sind(theta1));
V_Y=complex(V*cosd(theta2),V*sind(theta2));
V_B=complex(V*cosd(theta3),V*sind(theta3));
V_NN_dash=((V_R*Y_R)+(V_Y*Y_Y)+(V_B*Y_B))/(Y_R+Y_Y+Y_B);
V_R_dash=V_R-V_NN_dash;
V_Y_dash=V_Y-V_NN_dash;
V_B_dash=V_B-V_NN_dash;
V_R_dash_mag=sqrt(real(V_R_dash)^2+imag(V_R_dash)^2);
V_Y_dash_mag=sqrt(real(V_Y_dash)^2+imag(V_Y_dash)^2);
V_B_dash_mag=sqrt(real(V_B_dash)^2+imag(V_B_dash)^2);
V_R_dash_angle=atand(imag(V_R_dash)/real(V_R_dash));
V_Y_dash_angle=atand(imag(V_Y_dash)/real(V_Y_dash));
V_B_dash_angle=atand(imag(V_B_dash)/real(V_B_dash));
printf("\n\n     Phase voltages: Magnitude\tAngle(deg)")
printf("\n     For R phase\t%3.2f\t%0.3f",V_R_dash_mag,V_R_dash_angle)
printf("\n     For Y phase\t%3.2f\t%3.2f",V_Y_dash_mag,V_Y_dash_angle)
printf("\n     For B phase\t%3.0f\t%3.2f",V_B_dash_mag,V_B_dash_angle)

I_R=V_R_dash*Y_R;
I_Y=V_Y_dash*Y_Y;
I_B=V_B_dash*Y_B;
I_R_mag=sqrt(real(I_R)^2+imag(I_R)^2);
I_Y_mag=sqrt(real(I_Y)^2+imag(I_Y)^2);
I_B_mag=sqrt(real(I_B)^2+imag(I_B)^2);
I_R_angle=atand(imag(I_R)/real(I_R));
I_Y_angle=atand(imag(I_Y)/real(I_Y))-180;
I_B_angle=atand(imag(I_B)/real(I_B))+180;
printf("\n     Phase current: Magnitude\tAngle(deg)")
printf("\n      For R phase\t%2.2f\t%0.3f",I_R_mag,I_R_angle)
printf("\n      For Y phase\t%1.2f\t%3.2f",I_Y_mag,I_Y_angle)
printf("\n      For B phase\t%2.0f\t%3.2f",I_B_mag,I_B_angle)

//Answer vary due to roundoff error



