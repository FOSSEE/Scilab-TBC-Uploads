//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 7.4\n\n\n");
// Chapter 7 : Mixtures Of Ideal Gases
// Problem 7.4  (page no. 325) 
// Solution

//five moles of oxygen and 10 moles of hydrogen are mixed
//The total number of moles is 10+5=15.Therefore,mole fraction of each constituent is
xO2=5/15; //The mole fraction of oxygen 
xH2=10/15; //The mole fraction of hydrogen
printf("The mole fraction of oxygen is %f and of hydrogen is %f\n",xO2,xH2);
//the molecular weight of mixture=sum of products of mole fraction of each gas component(MW of O2=32 and MW of H2=2.016)
printf("The molecular weight of the final mixture is %f\n",((5/15)*32)+((10/15)*2.016));
R=1545/32; //the gas constant of oxygen
T=460+70; //absolute temperature //Unit:R
p=14.7; //pressure //psia
//The partial volume of the oxygen can be found as follows:per pound of oxygen,
//p*vO2=R*T;
vO2=(R*T)/(p*144); //ft^3/lbm //1 in^2=144 ft^2  
//Because there are 5 moles of oxygen,each containing 32 lbm,
VO2=vO2*5*32; //ft^3 //partial volume of oxygen
printf("The partial volume of oxygen is %f ft^3\n",VO2);
//For the hydrogen,we can simplify the procedure by noting that the fraction of the total volume occupied by the oxygen is the same as its mole fraction.Therefore,
Vm=3*VO2; //total volume occupied //ft^3
printf("The mixture volume is %f ft^3\n",Vm);
//and the hydrogen volume
VH2=Vm-VO2; //Ft^2 //partial volume of hydrogen
printf("From simplified procedure,The partial volume of hydrogen is %f ft^3\n",VH2);

//We could obtain the partial volume of hydrogen by proceeding as we did for the oxygen.Thus,
//p*vH2=R*T;
R=1545/2.016; //the gas constant of hydrogen
vH2=(R*T)/(p*144); //ft^3/lbm //1 in^2=144 ft^2  
//Because there are 10 moles of hydrogen,each containing 2.016 lbm,
VH2=vH2*10*2.016; //ft^3 //partial volume of hydrogen
printf("The partial volume of hydrogen is %f ft^3\n\n",VH2);
//Which checks our previous values.


printf("From another method,\n");
//As an alternative to the foregoing,we could also use the fact that at 14.7 psia and 32F a mole of any gas occupies a volume of 358 ft^3.
printf("At 70F and 14.7 psia,a mole occupies %f ft^3\n",358*((460+70)/(460+32))); 
//Therefore, 5 moles of oxygen occupies 
VO2=5*358*((460+70)/(460+32)); //The partial volume of oxygen //ft^3
printf("The partial volume of oxygen is %f ft^3\n",VO2);
//and 10 moles of hydrogen occupies
VH2=10*358*((460+70)/(460+32)); //The partial volume of hydrogen //ft^3
printf("The partial volume of hydrogen is %f ft^3\n",VH2);
//Both values are in good agreement with the previous calculations.

