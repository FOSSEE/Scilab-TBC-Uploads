//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex7_8.sce.

clc;
clear;
Np=1000;                                 //number of Primary turns
Ns=100;                                  //number of secondary turns
KVA=120e3;                                //KVA rating of the transformer
V_SL=440;                                //supply voltage in V

K=Np/Ns;                             //transformer turns ratio
I_SL=KVA/(sqrt(3)*V_SL);

printf("\n (a)")
V_PL=(V_SL*K)/sqrt(3);
I_PL=(sqrt(3)*I_SL)/K;
transformation_ratio=V_PL/V_SL;
printf("\n Delta star connection:\n")
printf("\n  Primary line current=%2.1f A ",I_PL)
printf("\n  Primary line voltage=%d V ",V_PL)
printf("\n  Transformation ratio =%2.1f \n",transformation_ratio)

printf("\n(b)")
V_PL=V_SL*K*sqrt(3);
I_PL=I_SL/(sqrt(3)*K);
transformation_ratio=V_PL/V_SL;
printf("\n star delta connection:\n")
printf("\n  Primary line current=%1.1f A ",I_PL)
printf("\n  Primary line voltage=%d V ",V_PL)
printf("\n  Transformation ratio =%2.2f ",transformation_ratio)

