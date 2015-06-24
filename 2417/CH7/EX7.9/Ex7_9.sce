//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 7.9\n\n\n");
// Chapter 7 : Mixtures Of Ideal Gases
// Problem 7.9  (page no. 331) 
// Solution

//Given: cp of oxygen is 0.23 Btu/lbm*R.cp of nitrogen is 0.25 Btu/lbm*R. 160 lbm/hr of oxygen and 196 lbm/hr of nitrogen are mixed.oxygen is at 500 F and nitrogen  is at 200 F.

//The energy equation for the steady-flow,adiaatic mixing process gives us the requirement that the enthalpy of the mixture must equal to the enthalpies of the      components,because deltah=q=0.An alternative statement of this requirement is that the gain in enthalpy of the nitrogen must equal the decrease in enthalpy of the   oxygen.Using the latter statement,that the change in enthalpy of nitrogen,yields
// (160*0.23*(500-tm)) = (196*0.25*(tm-200)) where tm=mixture temperature
//where m*cp*deltat has been used for deltah. //cp=specific heat at constant pressure //Unit for cp is Btu/lbm*R
//rearranging the above equation,
tm=((500*160*0.23)+(196*0.25*200))/((196*0.25)+(160*0.23)); //tm=mixture temperature //Unit:fahrenheit
printf("The final temperature of the mixture is %f F\n",tm);
//Using the requirement that the enthalpy of the mixture must equal to the sum of the enthalpies of the components yields an alternative solution to this problem.Let  us assume that at 0 F,the enthalpy of each gas and of the mixture is zero.The enthalpy of the entering oxygen is (160*0.23*(500-0)),and the enthalpy of the        entering nitrogen is (196*0.25*(200-0)).The enthalpy of the mixture is ((160+196)*cpm*(tm-0))
//Therefore,  (160*0.23*500)+(196*0.25*200) = ((160+196)*cpm*tm)
cpm=((160/(160+196))*0.23)+((196/(160+196))*0.25); //specific heat at constant pressure for gas mixture //Btu/lbm*R
printf("For mixture,Specific heat at constant pressure is %f Btu/lbm*R\n",cpm);
//therefore,
tm=((160*0.23*500)+(196*0.25*200))/(cpm*(160+196)); //tm=mixture temperature //Unit:fahrenheit
printf("By using value of cpm,The final temperature of the mixture is %f F\n",tm);
//The use of 0 F as a base was arbitrary but convenient.Any base would yield the same results.
//The answer of cpm is wrong in the book.
