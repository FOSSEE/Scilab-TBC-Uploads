//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 7.3\n\n\n");
// Chapter 7 : Mixtures Of Ideal Gases
// Problem 7.3  (page no. 323) 
// Solution

//Ten pounds of air,1 lb of carbon dioxide,and 5 lb of nitrogen are mixed at constant temperature until the mixture pressure is constant
nair=10/29; //no of moles of air=ratio of mass and molecular weight //10 lb of nitrogen per pound //molecular weight of air=29
printf("The moles of air is %f mole/lbm of mixture\n",nair);
nCO2=1/44; //no of moles of carbon dioxide=ratio of mass and molecular weight //1 lb of per pound //molecular weight of CO2=44
printf("The moles of carbon dioxide is %f mole/lbm of mixture\n",nCO2);
nN2=5/28; //no of moles of nitrogen=ratio of mass and molecular weight //5 lb of nitrogen per pound //molecular weight of N2=28
printf("The moles of nitrogen is %f mole/lbm of mixture\n",nN2);
nm=nair+nCO2+nN2; //Unit:Mole/lbm //number of moles of gas mixture is sum of the moles of its constituent gases
printf("The total number of moles is %f mole/lbm\n\n",nm); 

xair=nair/nm //mole fraction of air=ratio of no of moles of air and total moles in mixture
xCO2=nCO2/nm; //mole fraction of carbon dioxide=ratio of no of moles of carbon dioxide and total moles in mixture
xN2=nN2/nm; //mole fraction of nitrogen=ratio of no of moles of oxygen and total moles in mixture
printf("The mole fraction of air is %f \n",xair);
printf("The mole fraction of carbon dioxide is %f\n",xCO2)
printf("The mole fraction of nitrogen is %f\n\n",xN2);

//final pressure of is 100 psia
pair=xair*100; //the partial pressure of air= final pressure * the mole fraction of air //psia
printf("The partial pressure of air is %f psia\n",pair);
pCO2=xCO2*100; //the partial pressure of carbon dioxide= final pressure * the mole fraction of CO2 //psia
printf("The partial pressure of carbon dioxide is %f psia\n",pCO2);
pN2=xN2*100; //the partial pressure of nitrogen=final pressure * the mole fraction of nitrogen //psia
printf("The partial pressure of nitrogen is %f psia\n\n",pN2);

//the molecular weight of mixture=sum of products of mole fraction of each gas component
MWm=(xair*29) + (xCO2*44) + (xN2*28); //The molecular weight of air 
printf("The molecular weight of air is %f\n\n",MWm);

Rm=1545/MWm; //the gas constant of air
printf("The gas constant of air is %f\n\n",Rm);
