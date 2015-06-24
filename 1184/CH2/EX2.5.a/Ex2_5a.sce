clc;
clear;
R1=10*10^3;
R2=470;
attenuation=R2/(R2+R1);
printf('The attenuation is %.3f',attenuation);
