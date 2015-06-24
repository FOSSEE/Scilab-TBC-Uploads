//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 7.5\n\n\n");
// Chapter 7 : Mixtures Of Ideal Gases
// Problem 7.5  (page no. 326) 
// Solution

//Referring to figure 7.3,we have for CO2,
nCO2=10/44; //mole //no of moles of carbon dioxide=ratio of mass and molecular weight //10 lb of per pound //molecular weight of CO2=44
//and for N2,
nN2=5/28.02; //mole //no of moles of nitrogen=ratio of mass and molecular weight //5 lb of nitrogen per pound
printf("The total number of moles in the mixture is %f mole\n",nCO2+nN2);
//Therefore,
xCO2=nCO2/(nCO2+nN2); //mole fraction of carbon dioxide=ratio of no of moles of carbon dioxide and total moles in mixture
xN2=nN2/(nCO2+nN2); //mole fraction of nitrogen=ratio of no of moles of oxygen and total moles in mixture
printf("The mole fraction of carbon dioxide is %f and the mole fraction of nitrogen is %f\n",xCO2,xN2);
//the molecular weight of mixture=sum of products of mole fraction of each gas component
MWm=(xCO2*44) + (xN2*28.02); //the molecular weight of mixture
printf("The molecular weight of air is %f\n",MWm);
//Because the mixture is 15 lbm (10CO2 + 5N2),the volume of the mixture is found from pm*Vm=mm*Rm*Tm
pm=100; //mixture pressure //psia 
Tm=460+70; //mixture temperature //R(absolute temperature)
Rm=1545/37.0; //gas constant of mixture 
mm=15; //mass of mixture //Unit:lb
//So,rearranging the equation,gives
Vm=(mm*Rm*Tm)/(pm*144);  //mixture volume //ft^3 //1 in^2= 144 ft^2
printf("The mixture volume is %f ft^3\n",Vm);
//the partial volume of carbon dioxide is the total volume multiplied by the mole fraction.Thus,
VCO2=Vm*xCO2; //the partial volume of CO2 //ft^3
printf("The partial volume of carbon dioxide is %f ft^3\n",VCO2);
VN2=Vm*xN2; //the partial volume of N2 //ft^3
printf("The partial volume of nitrogen is %f ft^3\n",VN2);
//The partial pressure of each constituent is proportional to its mole fraction,for these conditions,
pCO2=pm*xCO2; //the partial pressure of carbon dioxide= final pressure * the mole fraction of CO2 //psia
printf("The partial pressure of carbon dioxide is %f psia\n",pCO2);
pN2=pm*xN2; //the partial pressure of nitrogen=final pressure * the mole fraction of nitrogen //psia
printf("The partial pressure of nitrogen is %f psia\n\n",pN2);


