//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex5_15.sce.

clc;
clear;
P=50e3;
V1=2.2e3;
V2=220;

printf("\n  (a)")
I1=P/V1;
I2=P/V2;
printf("\n Primary current=%2.2f A \n",I1)
printf("\n Secondary current=%3.1f A \n",I2)

printf("\n  (b)")
Zl2=V2/I2;
printf("\n The load impedence for the secondary side=%1.3f ohm \n",Zl2)

printf("\n  (c)")
Zl1=V1/I1;
printf("\n The load impedence for the primary side=%2.1f ohm \n",Zl1)
