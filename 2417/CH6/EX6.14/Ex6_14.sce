clear;
clc;
printf("\t\t\tProblem Number 6.14\n\n\n");
// Chapter 6: The Ideal Gas
// Problem 6.14 (page no. 255) 
// Solution

R=60; //Unit:ft*lbf/lbm*R //constant of proportionality
deltah=500; //Btu/lbm //change in enthalpy
deltau=350; //Btu/lbm //change in internal energy
J=778; //conversion factor
//Because deltah-(cp*deltaT) and deltau=cv*deltaT
// deltah/deltau=(cp*deltaT)/(cv*deltaT)=cp/cv=k
k=deltah/deltau; //Ratio of specific heats
printf("Ratio of specific heats k is %f\n",k);
//From equation cv=R/(J*(k-1))
cv=R/(J*(k-1)); //specific heat at constant volume //Btu/lbm*R
printf("Specific heat at constant volume is %f Btu/lbm*R\n",cv);
cp=k*cv; //Specific heat at constant pressure //Btu/lbm*R
printf("Specific heat at constant pressure is %f Btu/lbm*R\n",cp);
