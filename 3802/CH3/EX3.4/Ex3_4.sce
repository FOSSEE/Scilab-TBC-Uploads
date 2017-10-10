//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex3_4(b).sce


//case(b)
clc;
clear;
R=1;
L=0.1;
C=1;
I=10;
s=0;            //complex frequency
V=(10*s)/(s^2+s+10);    //voltage across the parallel circuit
iG=V*R;
printf("\n Current through conductance=%d A \n",iG)
iC=V*C;
printf("\n Current through capacitance=%d A \n",iC)
iL=100/(s^2+s+10);   //simplified form of V/Ls=(10s/(s^2+s+10))/(0.1s)
printf("\n Current through inductance=%d A \n",iL)


