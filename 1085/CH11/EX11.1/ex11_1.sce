//Exam:11.1
clc;
clear;
close;
h_1=1;
k_1=1;
l_1=1;
//Miller indices of slip plane
h_2=1;
k_2=-1;
l_2=1;
//Miller indices of stress plane
h_3=1;
k_3=1;
l_3=0;
//Miller indices of slip direction
A=(h_1*h_2+k_1*k_2+l_1*l_2)/(((h_1^2+k_1^2+l_1^2)^(1/2))*((h_2^2+k_2^2+l_2^2)^(1/2)));//Value of cos(x) where x =angle between slip plane and stress plane
B=(h_1*h_3+k_1*k_3+l_1*l_3)/(((h_1^2+k_1^2+l_1^2)^(1/2))*((h_3^2+k_3^2+l_3^2)^(1/2)));//Value of cos(y) where y =angle between slip direction and stress direction
C=(1-A^2)^(1/2);//Value of sin(x)
stress=3.5;//Applied Stress in Mpa
T_cr=stress*A*B*C;//Critical resolved shear stress(in MPa)
disp(T_cr,'Critical resolved shear stress(in MPa)=');