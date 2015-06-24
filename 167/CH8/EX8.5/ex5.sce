//example 5
//heating potential of a hot iron block
clear
clc
Tl=278 //Outdoor temp. in K
Th=300 //Room temp. in K
COPhp=1/(1-Tl/Th) //coefficient of performance of heat engine if its assumed to be reversible
E=38925-8191+13.6*8191 //potential energy of hot iron block in kJ
printf("\n Hence, the maxuimum amount of heat that can be supplied to the house is = %.0f MJ. \n",E/1000);