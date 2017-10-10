//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex4_29.sce.

clc;
clear;
Q1=60e-6;   //Capacitor charges in coulomb
V1=180;     //Volatge in volt

C1=Q1/V1;
C2=4*C1;
Q2=0;
E1=(1/2)*C1*V1^2;                //Before two capacitance are joined the energy stored in C1
E2=0;                        //Energy stored in C2
Ea=E1+E2;                   //Total energy before two capacitors are joined
V=(Q1+Q2)/(C1+C2);          //Potential in volt

E1=(1/2)*C1*V^2;       //Energy stored in C1 in joule
E2=(1/2)*C2*V^2;       //Energy stored in C2 in joule
Eb=E1+E2;                //Total energy after two capacitors are joined

E_loss=Ea-Eb;
printf("\n Loss of energy=%2.1f*10^-4 joule",E_loss*1e4)
 
