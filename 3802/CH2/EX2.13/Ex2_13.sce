//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex2_13.sce.

clc;
clear;
R1=4;       //Resistance in ohm
R2=4;       //Resistance in ohm
R3=8;       //Resistance in ohm
R4=10;       //Resistance in ohm
R5=3;       //Resistance in ohm
R6=8;       //Resistance in ohm
R7=2;       //Resistance in ohm
R12=1/((1/R1)+(1/R2));         //R1 and R2 are in parallel
R34=1/((1/R4)+(1/(R3+R12)));   //R12 and R3 are in parallel with R4
R56=1/((1/R6)+(1/(R5+R34)));   //R34 and R5 are in parallel with R6
Rab=R7+R56;      //R56 and R7 are in series
RL=Rab;
printf("\n  Load resitance to the 10 volt source=%d ohm \n",RL )
