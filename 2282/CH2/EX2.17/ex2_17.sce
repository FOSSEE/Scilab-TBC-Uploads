// Example 2.17, page no-50
clear
clc
vp=8         //horizontal velocity of satellite in km/s
r=1620       // distance from earth's surface in km
R=6380       // Earth's radius in km
d=10000      // distance of point at which velocity to be calculated
theta=30     // angle made by satellite with local horzon at that point

P=r+R
v=(vp*P)/(d*cos(theta*%pi/180))
printf("v = %.2f km/s",v)
