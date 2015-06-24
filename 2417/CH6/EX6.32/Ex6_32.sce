clear;
clc;
printf("\t\t\tProblem Number 6.32\n\n\n");
// Chapter 6: The Ideal Gas
// Problem 6.32 (page no. 279) 
// Solution

//data given
n=1.3; //p*v^1.3=constant
k=1.4; //k=cp/cv Ratio of specific heats 
cp=0.24; //specific heat at constant pressure //Btu/lbm*R
T2=600; //absolute final temperature //unit:R
T1=1500; //absolute initial temperature //unit:R
R=53.3; //Unit:ft*lbf/lbm*R //constant of proportionality
J=778; //conversion factor
cv=cp/k; //specific heat at constant volume //Btu/lbm*R
//Therefore,
cn=cv*((k-n)/(1-n)); //Polytropic specific heat //Btu/lbm*R
printf("Polytropic specific heat(cn) is %f Btu/lbm*R\n",cn);
//The negative sign of cn indicates that either the heat transfer for the process comes from the system or there is a negative temperature change while heat is        transferred to the system.
//The heat transferred is cn*(T2-T1).Therefore,
q=cn*(T2-T1); //heat transferred //Btu/lbm(to the system)
printf("The heat transferred is %f Btu/lbm(to the system)\n",q);
//The work done can be found using equation,
w=(R*(T2-T1))/(J*(1-n)); //Btu/lbm //the workdone(from the system)
printf("The work done is %f Btu/lbm(from the system)\n",w);
deltas=cn*log(T2/T1)' //change in entropy //Btu/lbm*R
printf("The change in enthalpy is %f Btu/lbm*R\n",deltas);
