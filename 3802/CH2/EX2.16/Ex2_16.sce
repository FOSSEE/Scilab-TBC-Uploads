//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex2_16.sce.

clc;
clear;
R1=10;
I1=2.5;
V2=60;
R2=30;
I2=V2/R2;                     //Ohm's law
Gs=(1/R1)+(1/R2);
Rs=1/Gs;
Isc=I1+I2;
Voc=Isc*Rs;

//case (a)
printf("\n (a)")
R=Rs;
printf("\n  The value of R which absorbs maximum power from the circuit=%1.1f ohm \n",R)

//case (b)
printf("\n (b)")
Pm=Voc^2/(4*Rs);
printf("\n  The amount of power=%2.0f W \n",Pm)
