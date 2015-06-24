//Ex:61
clc;
clear;
close;
r_a=50000;//apogee in km
r_p=8000;//perigee in km
a=(r_a+r_p)/2;//Semi_major axis in km
b=sqrt(r_a*r_p);//semi minor axis in km
e=(r_a-r_p)/(r_a+r_p);//eccentricity
printf("The semi_major axis=%f km",a);
printf("\n The semi_minor axis=%f km",b);
printf("\n The eccentricity=%f km",e);