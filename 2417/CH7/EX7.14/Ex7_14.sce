//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 7.14\n\n\n");
// Chapter 7 : Mixtures Of Ideal Gases
// Problem 7.14  (page no. 338) 
// Solution

//To solve this probelm,it is necessary to determine the properties of the saturated mixture 90 F.If the air is saturated at 90 F,the partial pressure of the water  vapor is found directly from the Steam Tables as 0.6988 psia,and the specific volume of the water vapor is 467.7 ft^3/lbm of vapor.
printf("The partial pressure of the dry air is %f psia\n",14.7-0.6988); //the mixture is at 14.7 psia
R=1545/28.966; //gas constant of dry air=1545/Molecular weight
T=90+460; //temperature of dry air //Unit:R
pdryair=14.0; //psia //pressure of dry air
//Applying the ideal gas equation to the air,
vdryair=(R*T)/(pdryair*144); //volume of dry air //ft^3/lbm //1 in^2=144 Ft^2
//the mass of dry air in the 467.7 ft^3 container 
printf("The mass of dry air in the 467.7 ft^3 container is %f lbm\n",467.7/vdryair);
//To obtain relative humidity(phy),it is necessary to determine the mole fraction of water vapor for both the saturated mixture and the mixture in question.
//The saturated mixture contains 1 lbm of water vapor or 1/18.016 moles =0.055 mole of water vapor and (467.7/vdryair)/28.966=1.109 moles of dry air.
//For the saturated mixture, the ratio of moles of water vapor to moles of mixture is 0.055/(0.055+1.109)=0.0477
//For the actual mixture,the moles of water vapor per pound of dry air is 0.005/18.016=0.000278 and 1 lbm of dry air is 1/28.966=0.0345 mole.So,the mole of water vapor per mole of  mixture at the conditions of the  mixture is 0.000278/(0.0345+0.000278)=0.00799
//From the defination of relative humidity,
printf("The relative humidity of the mixture is %f \n",(0.00799/0.0477)*100);

//Because the mole ratio is also the ratio of the partial pressures for the ideal gas,phy can be expressed as the ratio of the partial pressure of the water vapor in  the mixture to the partial pressure of the water vapor at saturation.Therefore,
printf("The partial pressure of the vapor at saturation is %f psia\n",(0.00799/0.0477)*0.6988);
printf("And the partial pressure of the dry air in the mixture is %f psia\n",14.7-((0.00799/0.0477)*0.6988)); //14.7-The partial pressure of the vapor at saturation
//The dew point temperature is the saturation temperature corresponding to the partial pressure of the water vapor in the mixture.So,
printf("The dew point temperature corresponding to %f psia is 39F\n",(0.00799/0.0477)*0.6988);


