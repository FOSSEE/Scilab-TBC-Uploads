//Ex:50
clc;
clear;
close;
a_p=30000;// the difference b/w apogee and perigee in km
a=16000;//Semi_major axis in km
e=a_p/(2*a);//orbital eccentricity
printf("The orbital eccentricity=%f",e);