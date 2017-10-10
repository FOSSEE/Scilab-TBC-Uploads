//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex2_3.sce.

clc;
clear;
//case1
//voltage source series with the resistance converted into current source parallel to the conductance
printf("\n (a)")
Rs1=5;
Vs1=100;
Is1=Vs1/Rs1;
Gs1=1/Rs1;
printf("\n   Is1=%d A \n",Is1)
printf("\n   Gs1=%1.2f mho \n",Gs1)

//case2
//current source parallel to the conductance converted into voltage source series with the resistance
printf("\n (b)")
Gs2=10e-3;
Is2=500e-3;
Vs2=Is2/Gs2;
Rs2=1/Gs2;
printf("\n   Vs2=%d V \n",Vs2)
printf("\n   Rs2=%d ohm \n",Rs2)
