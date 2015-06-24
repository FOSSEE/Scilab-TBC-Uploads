//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 11.27\n\n\n");
// Chapter 11 : Heat Transfer
// Problem 11.27  (page no. 605) 
// Solution

//HEAT EXCHANGER
//Oil flows in the tube side and is cooled from  280 F to 140 F
//Therefore,
t2=140; //Unit:fahrenheit
t1=280; //Unit:fahrenheit
//On the shell side,water is heated from 85 F to 115 F
T1=85; //Unit:fahrenheit
T2=115; //Unit:fahrenheit
P=(t2-t1)/(T1-t1); 
R=(T1-T2)/(t2-t1);
//From the figure,
F=0.91;//Correction factor
LMTD=((t1-T2)-(t2-T1))/log((t1-T2)/(t2-T1)); //LMTD=Log mean temperature difference //Unit:fahrenheit
TMTD=F*LMTD; //TMTD=True mean temperature difference //Unit:fahrenheit
printf("The true mean temperature is %f fahrenheit",TMTD);

