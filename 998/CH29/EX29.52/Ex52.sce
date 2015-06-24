//Ex:52
clc;
clear;
close;
e=0.5;//orbital eccentricity
a_e=14000;//dis b/w center of ellipse to the center of earth in km
a=a_e/e;//semi major axis in km
r_a=a*(1+e);//apogee in km
r_p=a*(1-e);//perigee in km
printf("The apogee=%d km",r_a);
printf("\n The perigee=%d km",r_p);