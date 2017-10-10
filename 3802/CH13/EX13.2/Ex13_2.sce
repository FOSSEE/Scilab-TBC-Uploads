//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex13_2.sce

clc;
clear;
R1=60;
R2=80;
C=100e-6;
V=12;
t1=6e-3;
i_S=300e-3;
i_R=V/R1;
i_C=(V/R2)*exp(-t1/(R2*C));
i=i_R+i_C;
printf("\n The current drawn from the source=%3.0f mA \n",i*1e3)
I_C=i_S-i_R;
t2=(R2*C)*log(V/(R2*I_C));
printf("\n Time for draw the current of 300 mA from the source=%1.3f ms \n",t2*1e3)
