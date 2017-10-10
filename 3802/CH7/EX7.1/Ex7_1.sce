//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex7_1.sce.

clc;
clear;
p=175e3;                    //power rating of transformer in KVA
Ep=6600;                    //primary voltage in volts
Es=440;                    //secondary voltage in volts
f=50;
Ns=100;                   //Number of secondary turns

//(a)
printf("\n  (a)")
Ip=p/Ep;
Is=p/Es;
printf("\n Full load primary current=%2.2f A ",Ip)
printf("\n Full load secondary current=%3.2f A \n",Is)

//(b)
printf("\n  (b)")
Np=Ns*Ep/Es;
printf("\n Number of primary turns=%d \n",Np)

//(c)
printf("\n  (c)")
max_flux=Es/(4.44*f*Ns);
printf("\n The maximum value of flux=%1.5f Wb \n",max_flux)
