clc
//initialisation of variables
Load= 100 //KN
Length= 10 //m
yieldstress= 300 //N/mm^2
loadfactor= 1.5
//CALCULATIONS
requiredultimateload= loadfactor*Load
Mp= requiredultimateload*Length/6
Zp= Mp/yieldstress
//RESULTS
printf ('Zp= %.1e mm^3',Zp)
disp("The appropriate beam for this is 406*140*49")
