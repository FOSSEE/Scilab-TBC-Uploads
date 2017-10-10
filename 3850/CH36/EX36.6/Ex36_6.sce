

//To Calculate the True Dip

//Example 36.6

clear;

clc;

alpha=%pi/4;//Angle made by Dip Circle to the Meridian in radians

del1=%pi/6;//Apparent Dip in radians

del=atan(tan(del1)*cos(alpha))*180/%pi;//True Dip in degrees

printf("True dip = %f degrees",del);//Answer mentioned as atan(1/sqrt(6)) in the textbook which is same as 22.207 degrees
