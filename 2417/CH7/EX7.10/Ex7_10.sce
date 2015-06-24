//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 7.10\n\n\n");
// Chapter 7 : Mixtures Of Ideal Gases
// Problem 7.10  (page no. 332) 
// Solution

//Problem 7.9 is carried out as a nonflow mixing process.
//Given in problem 7.9,: cp of oxygen is 0.23 Btu/lbm*R.cp of nitrogen is 0.25 Btu/lbm*R. 160 lbm/hr of oxygen and 196 lbm/hr of nitrogen are mixed.oxygen is at 500F and nitrogen  is at 200 F. //cp=specific heat at constant pressure 
//Given in problem 7.10,: cv of oxygen is 0.164 Btu/lbm*R.cv of nitrogen is 0.178 Btu/lbm*R. //cv=specific heat at constant volume

//Because this is a nonflow process,the energy equation for this process requires the internal energy of the mixture to equal to the sum of the internal energy of   its components.
//Alternatively,the decrease in internal energy of the oxygen must equal the increase in internal energy of the nitrogen.Using latter statement gives us,
// (160*0.164*(500-tm)) = (196*0.178*(tm-200))
//where m*cv*deltat has been used for deltau. //Unit for cp & cv is Btu/lbm*R
//rearranging the above equation,
tm=((500*160*0.164)+(196*0.178*200))/((196*0.178)+(160*0.164)); //tm=mixture temperature //Unit:fahrenheit
printf("The final temperature of the mixture is %f F\n",tm);

