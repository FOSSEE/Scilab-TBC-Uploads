// Example 2.4, page no-37
clear
clc

e=0.6   //Eccentricity
d=18000 //distance between earth's centre and centre of ellipse

a=d/e
A=a*(1+e)
P=a*(1-e)

printf("Semi-major axis of elliptical orbit is %d km\n Apogee distance=%dkm\n Perigee distance=%dkm",a,A,P)
