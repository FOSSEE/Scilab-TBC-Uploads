// Example 2.18, page no-50
clear
clc

r=620       // distance from earth's surface in km
vp=8         //horizontal velocity of satelliteat 9000km height in km/s
R=6380       // Earth's radius in km
d=9000      // distance of point at which velocity to be calculated
theta=30     // angle made by satellite with local horzon at that point
mu=39.8*10^13  // Nm^2/kg

P=r+R
m=vp*d*cos(theta*%pi/180)/P    //m=sqrt((2mu/P)-[2mu/(A+P)])
m=(m*10^3)^2
x=(2*mu/(P*10^3))-m          //x=[2mu/(A+P)]
x=floor(x/10^4)*10^4
k=(2*mu)/x               //k=A+P
k=ceil(k/10^4)*10^4
A=k-(P*10^3)
printf("A = %.0f km",A/1000)
