//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 7.16\n\n\n");
// Chapter 7 : Mixtures Of Ideal Gases
// Problem 7.16  (page no. 343) 
// Solution

pm=14.7; //the barometer is at 14.7 psia //mixture is at 14.7 psia
//The amount of water vapor removed (per pound of dry air) is the difference between the humidity ratio (specific humidity) at inlet and outlet of the conditioning    unit.We shall therefore evalute W for both specified conditions.Because phy=pv/pvs,
//At 90F:
phy=0.7; //relative humidity
pvs=0.6988; //psia //saturation pressure of water vapor at the temperature of mixture
pv=phy*pvs; //psia //the partial pressure of the water vapor 
pa=pm-pv; //psia //pa=the partial pressure of the dry air in the mixture
W=0.622*(pv/pa); //Humidity ratio

//At 80F:
phy=0.4; //relative humidity
pvs=0.5073; //psia //saturation pressure of water vapor at the temperature of mixture
pv=phy*pvs; //psia //the partial pressure of the water vapor 
pa=pm-pv; //psia //pa=the partial pressure of the dry air in the mixture
w=0.622*(pv/pa); //Humidity ratio

printf("The amount of water removed per pound of dry air is %f\n",W-w);
