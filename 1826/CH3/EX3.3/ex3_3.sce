// Example 3.3, page no-90
clear
clc
d=5.6534*10^-10 
theta=13.6666 //in degrees
n=1
//(i)
lam=2*d*sin(theta*%pi/180)/n
printf("\n(i)\nLambda =%.3f*10^-10 m",lam*10^10)
//(ii)
n=2
theta=asin(n*lam/(2*d))
theta=theta*180/%pi
printf("\n(ii)\n2nd order Bragg reflection at angle Theta2 = %f°",theta)
