// Example 3.8, page no-97
clear
clc

H=36000       //Height of geostationary satellite from the surface of earth
R=6370        // Radius of earth in km
k=acos(R/(R+H))
//k=k*180/%pi
k=sin(k)
k=ceil(k*1000)/1000
d=2*(H+R)*k
printf("Maximum line-of-sight distance is %.2f km",d)
