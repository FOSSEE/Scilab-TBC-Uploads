//Exam:3.29
clc;
clear;
close;
n_1=1;//1st order reflection index
angle_1=10;//1st order reflection angle
n_3=3;//3rd order reflection index
//sind(angle_1)/sind(angle_3)=n_1/n_3
angle_3=asind(n_3*sind(angle_1)/n_1);//
disp(angle_3,'3rd order reflection angle=')