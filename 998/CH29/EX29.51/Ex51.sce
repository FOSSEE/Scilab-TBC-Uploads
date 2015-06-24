//Ex:51
clc;
clear;
close;
r_a=30000+6370;//apogee in km
r_p=200+6370;//perigee in km
e=(r_a-r_p)/(r_a+r_p);// eccentricity
printf("The apogee=%f km",r_a);
printf("\n The perigee=%f km",r_p);
printf("\n The orbital eccentricity=%f",e);