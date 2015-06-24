// Example 2.14, page no-44
clear
clc
theta=56.245    //angle made by direction of satellite with local horizontal
d=16000         //distance of particular point
P=8000          //Perigee in m
v_p=9.142       // velocity at perigee point

v=(P*v_p)/(d*floor(cos(theta*%pi/180)*1000)/1000)
printf("The velocity of satellite at that particular point is %.3f km/s",v)
