// Chapter7
//Example-7.1
//Figure 7.11
//page 216
clear;
clc;
R=10*10^6;          //in Ohm
C=10*10^-9;         //in Farad
T=R*C;          //discharge Time
printf("\n T %.1f S\n",T);
Vled=2.5;       //in V
Vsat=13;            //in V
Rl=500;         //in Ohm
Iled=(Vsat-Vled)/Rl;
printf("\n Iled %.3f A\n",Iled);
//result//
