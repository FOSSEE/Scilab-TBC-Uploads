//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 7.1\n\n\n");
// Chapter 7 : Mixtures Of Ideal Gases
// Problem 7.1  (page no. 322) 
// Solution

//As the basis of the calculation,assume that we have 1 lbm of mixture.Also,take the molecular weight of oxygen to be 32.00 and nitrogen to be 28.02.(from table7.1)
printf("Solution for (a)\n");
nO2=0.2315/32; //no of moles of oxygen=ratio of mass and molecular weight //0.2315 lb of oxygen per pound
printf("The moles of oxygen is %f mole/lbm of mixture\n",nO2);
nN2=0.7685/28.02; //no of moles of nitrogen=ratio of mass and molecular weight //0.7685 lb of nitrogen per pound
printf("The moles of nitrogen is %f mole/lbm of mixture\n",nN2);
nm=nO2+nN2; //Unit:Mole/lbm //number of moles of gas mixture is sum of the moles of its constituent gases
printf("The total number of moles is %f mole/lbm\n",nm); 
xO2=nO2/nm; //mole fraction of oxygen=ratio of no of moles of oxygen and total moles in mixture
xN2=nN2/nm; //mole fraction of nitrogen=ratio of no of moles of oxygen and total moles in mixture
printf("The mole fraction of oxygen is %f and the mole fraction of nitrogen is %f\n",xO2,xN2);
//(Check:xO2+xN2=1)
printf("xO2+xN2=%f\n\n",xO2+xN2);

printf("Solution for (b)\n");
// the air is at 14.7 psia
pO2=xO2*14.7; //the partial pressure of oxygen=pressure of air * the mole fraction of oxygen //psia
printf("The partial pressure of oxygen is %f psia\n",pO2);
pN2=xN2*14.7; //the partial pressure of nitrogen=pressure of air * the mole fraction of nitrogen //psia
printf("The partial pressure of nitrogen is %f psia\n\n",pN2);

printf("Solution for (c)\n");
MWm=(xO2*32) + (xN2*28.02); //the molecular weight of air=sum of products of mole fraction of each gas component
printf("The molecular weight of air is %f\n\n",MWm);

printf("Solution for (d)\n");
Rm=1545/MWm; //the gas constant of air
printf("The gas constant of air is %f\n\n",Rm);
