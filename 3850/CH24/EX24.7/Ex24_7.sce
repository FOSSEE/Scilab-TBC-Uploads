
//To calculate the relative humidity

//Example 24.7

clear;

clc;

Pvap=8.94;//vapour pressure at the dew point in (mm of Hg)

SVP=55.1;//saturation vapour pressure at the air temperature in (mm of Hg)

RH=(Pvap/SVP)*100;//finding the relative humidity

printf("Relative Humidity=%.1f percent",RH);
