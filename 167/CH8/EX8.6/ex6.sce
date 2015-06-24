//example 6
//second law efficiency of resistance heaters
clear
clc
Tl=283 //Outdoor Temp. in K
Th=294 //Indoor Temp. in K
COPhp=1/(1-Tl/Th) //coefficient of performance of reversible heat engine
COP=1 //first law efficiency
n=COP/COPhp //second law efficiency of resistance heater
printf("\n Hence, the second law efficiency of the heater is = %.1f percent. \n",n*100);