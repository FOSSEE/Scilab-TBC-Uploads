//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 7.15\n\n\n");
// Chapter 7 : Mixtures Of Ideal Gases
// Problem 7.15  (page no. 343) 
// Solution

//Problem 7.14 using equations, Rm=((ma/(ma+mv))*Ra)+((mv/(ma+mv))*Rv)   and  phy*pvs=pv
W=0.005; //Humidity ratio
pm=14.7; //mixture is at 14.7 psia
//W=0.622*(pv/(pm-pv))
//Rearranging,
pv=(W*pm)/(0.622+W); //the partial pressure of the water vapor 
printf("The partial pressure of the water vapor is %f psia\n",pv);
pa=pm-pv; //pa=the partial pressure of the dry air in the mixture
printf("The partial pressure of dry air is %f psia\n",pa);
//It is necessary to obtain pvs from the Steam Tables at 90 F.This is 0.6988 psia.
pvs=0.6988; //saturation pressure of water vapor at the temperature of mixture
printf("The partial pressure of the water vapor at saturation is %f psia\n",pvs);
//Therefore,
phy=pv/pvs; //relative humidity
printf("The relative humidity  is %f percent\n",phy*100);
//The dew point temperature is the saturation temperature corresponding to 0.117 psia,which is found from the Steam Tables to be 39 F.
printf("The dew point temperature of the mixture is 39 F\n");
//The results of this problem and problem 7.14 are in good agreement
