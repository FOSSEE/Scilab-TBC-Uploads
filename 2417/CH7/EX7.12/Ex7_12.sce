//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 7.12\n\n\n");
// Chapter 7 : Mixtures Of Ideal Gases
// Problem 7.12  (page no. 334) 
// Solution

//The change in entropy of the mixture is the sum of the changes in entropy of each component.
//Given in problem 7.9,: cp of oxygen is 0.23 Btu/lbm*R.cp of nitrogen is 0.25 Btu/lbm*R. 160 lbm/hr of oxygen and 196 lbm/hr of nitrogen are mixed.oxygen is at 500F and nitrogen  is at 200 F. //cp=specific heat at constant pressure 
//In 7.9,for the oxygen,the temperature starts at 500F(960 R) and decreases to 328.7 F.For the nitrogen,the temperature starts at 200F(660 R) and increase to 328.7 F.
//deltas = (cp*log(T2/T1)); //Unit:Btu/lbm*R //change in entropy

//For the oxygen,
cp=0.23; //specific heat at constant pressure //Unit:Btu/lbm*R
T2=328.7+460; //Unit:R //final temperature
T1=500+460; //Unit:R //starting temperature
deltas=(cp*log(T2/T1)); //Unit:Btu/lbm*R //change in entropy for oxygen
DeltaS=160*deltas; //Btu/R //The total change in entropy of the oxygen
printf("The total change in entropy of the oxygen is %f Btu/R\n",DeltaS);

//For the nitrogen,
cp=0.25; //specific heat at constant pressure //Unit:Btu/lbm*R
T2=328.7+460; //Unit:R //final temperature
T1=200+460; //Unit:R //starting temperature
deltas=(cp*log(T2/T1)); //Unit:Btu/lbm*R //change in entropy for nitrogen
deltaS=196*deltas; //Btu/R //The total change in entropy of the nitrogen
printf("The total change in entropy of the nitrogen is %f Btu/R\n",deltaS);
deltaS=deltaS+DeltaS; //the total change in entropy for the mixture //Btu/lbm*R
printf("The total change in entropy for the mixture is %f Btu/R\n",deltaS);

//Per pound of mixture,
deltasm=deltaS/(196+160); //increase in entropy per pound mass of mixture
printf("Increase in entropy per pound mass of mixture is %f Btu/lbm*R\n\n",deltasm);


printf("An alternative solution:\n");
//As an alternative solution,assume an arbitrary datum of 0 F(460 R).
cp=0.23; //specific heat at constant pressure //Unit:Btu/lbm*R
//For initial entropy of oxygen,
T2=500+460; //Unit:R //final temperature
T1=0+460; //Unit:R //starting temperature
deltas=cp*log(T2/T1); //the initial change in entropy for oxygen // Btu/lbm*R
printf("The initial change in entropy for oxygen is %f Btu/lbm*R\n",deltas);
//For final entropy of oxygen,
T2=328.7+460; //Unit:R //final temperature
T1=0+460; //Unit:R //starting temperature
Deltas=cp*log(T2/T1); //the final change in entropy for oxygen // Btu/lbm*R
printf("The final change in entropy for oxygen is %f Btu/lbm*R\n",Deltas);
deltaS=Deltas-deltas; //The entropy change of the oxygen //Btu/lbm*R
printf("The entropy change of the oxygen is %f Btu/lbm*R\n",deltaS);

//For nitrogen,
cp=0.25; //specific heat at constant pressure //Unit:Btu/lbm*R
//For initial entropy of nitrogen,
T2=200+460; //Unit:R //final temperature
T1=0+460; //Unit:R //starting temperature
deltas=cp*log(T2/T1); //the initial change in entropy for nitrogen // Btu/lbm*R
printf("The initial change in entropy for nitrogen is %f Btu/lbm*R\n",deltas);
//For final entropy of nitrogen,
T2=328.7+460; //Unit:R //final temperature
T1=0+460; //Unit:R //starting temperature
Deltas=cp*log(T2/T1); //the final change in entropy for nitrogen // Btu/lbm*R
printf("The final change in entropy for nitrogen is %f Btu/lbm*R\n",Deltas);
deltaS=Deltas-deltas; //The entropy change of the nitrogen //Btu/lbm*R
printf("The entropy change of the nitrogen is %f Btu/lbm*R\n",deltaS);

//The remainder of the problem is as before.The advantage of using this alternative method is the negative logarithms are avoided by choosing a reference          temperature lower than any other temperature in the system

