clear;
clc;
printf("\t\t\tProblem Number 6.24\n\n\n");
// Chapter 6: The Ideal Gas
// Problem 6.24 (page no. 267) 
// Solution

//data given
T2=460+400; //Fahrenheit temperature converted to absolute final temperature //unit:R
T1=460+70; //Fahrenheit temperature converted to absolute initial temperature //unit:R
cp=0.24; //specific heat at constant pressure //Btu/lbm*R
J=778; //conversion factor
R=1545/29; //moleculer weight=29 //Unit:ft*lbf/lbm*R //constant of proportionality
//From the energy equation for the constant-pressure process,the heat transferred is deltah.Therefore,
//q=deltah=cp*(T2-T1)
deltah=cp*(T2-T1); //heat transferred //Btu/lb //into system
printf("The heat transferred is %f Btu/lb(into system)\n",deltah);
deltas=cp*log(T2/T1); //increase in entropy //Btu/lbm*R
printf("The increase in entropy is %f Btu/lbm*R\n",deltas);
//The flow work change is (p2*v2)/J - (p1*v1)/J = (R/J)*(T2-T1)
flowworkchange=(R/J)*(T2-T1); //Btu/lbm //The flow work change per pound of air
printf("The flow work change per pound of air is %f Btu/lbm\n",flowworkchange);
//In addition to each of the assumptions made in all the process being considered,it has further been tacitly assumed that these processes are carried out quasi-      statically and without friction.
