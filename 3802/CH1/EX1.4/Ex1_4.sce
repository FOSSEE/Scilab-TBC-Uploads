//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex1_4.sce.

clc;
clear;
R1=10;           //resistance value in ohms
R2=15;           //resistance value in ohms
R3=20;          //resistance value in ohms
V=15;            //supply voltage in volts
Rs=R1+R2+R3;
Rp=(R1*R2*R3)/((R2*R3)+(R3*R1)+(R1*R2));
printf("\nThe series equivalent resistance=%2.0f ohms \n",Rs)
printf("\nThe parallel equivalent resistance=%1.3f ohms \n ",Rp)
Ps=(V^2)/Rs;
Pp=(V^2)/Rp;
printf("\nPower dissipated in series connection=%1.0f watts \n",Ps)
printf("\nPower dissipated in parallel connection=%2.2f watts \n",Pp)
