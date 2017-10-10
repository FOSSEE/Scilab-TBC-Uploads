//Example 9_7
clc();
clear;
//To find out by what factor the blood flow in an artery is reduced
r1_r2=1/2  //The ratio by which the radius is altered in arterys
R1_R2=1/r1_r2^4         //Ratio by which flow is altered
printf("The flow rate is reduced by a factor of %d",R1_R2)
