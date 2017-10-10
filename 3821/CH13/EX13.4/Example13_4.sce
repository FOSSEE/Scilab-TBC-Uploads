////Chapter 13  Steam Engines
////Example 13.2 Page No 285
///Find Cover end mean effective pressure
//Input data
clc;
clear;
Cover=1200;                       //Area of the indicator diagram for cover 
Crank=1100;                       //Area of the indicator diagram for crank
ID=75;
PS=0.15;


///Calculation
CoverMEP=Cover/ID*PS;             //Cover end mean effective pressure
CrankMEP=Crank/ID*PS;             //Crank end mean effective pressure
AverageMEP=(CoverMEP+CrankMEP)/2; //Average end mean effective pressure


///Output
printf('Cover end mean effective pressure= %f bar \n',CoverMEP);
printf('Crank end mean effective pressure= %f bar \n',CrankMEP);
printf('Average end mean effective pressure= %f bar \n',AverageMEP);
