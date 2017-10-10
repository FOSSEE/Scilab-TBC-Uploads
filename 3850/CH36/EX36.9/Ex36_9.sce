

//To Compare the total Magnetic Field due to earth at the two places

//Example 36.9

clear;

clc;

T1=3;//Time period for first place in seconds

T2=2;//Time Period for second place in seconds

theta1=%pi/4;//Dip in radians at first place

theta2=%pi/6;//Dip in radians at second place

Br=(T1^2/T2^2)*cos(theta1)/cos(theta2);//Ratio of Magnetic Field due to earth at two places

printf("The ratio of Magnetic Field due to earth at the two places = %.3f",Br);
