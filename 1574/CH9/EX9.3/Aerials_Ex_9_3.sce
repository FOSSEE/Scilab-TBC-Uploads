clc
//Chapter9
//Example9.3, pageno 397
//Given
r=1//assume distance for ease of calculation
//Pav(theta)=(1000/(3*%pi*r^2))*((sin(theta))^2)
theta=0:0.1:%pi
x0=0,x1=%pi
Pt=(2000/(3*r^2))*integrate('(sin(theta))^3','theta',x0,x1)//Total power radiated 
mprintf('Total power radiated is %f watts',Pt)

