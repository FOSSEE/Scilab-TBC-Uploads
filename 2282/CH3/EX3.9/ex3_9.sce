// Example 3.9, page no-98
clear
clc

H=36000       //Height of geostationary satellite from the surface of earth
R=6370        // Radius of earth in km
theta=20      // angular separation between two satellites

D=(H+R)
k=ceil(cos(theta*%pi/180)*100)/100
d=sqrt(2*D^2*(1-k))

printf("The line-of-sight distance is %.4f km",d)
