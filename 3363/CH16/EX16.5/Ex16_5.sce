//Example 16.5, Page 591
clc
h=1.05*10^-34//j-s
F=1.2
T=10^3//in s
m=.91*10^-30//in kg
c=3*10^8//in m/s
M=1
beta_square=(2*%pi*%pi*%pi*(h^7))/(F*T*(m^5)*(c^4))
beta=sqrt(beta_square)
printf("\n The value of Beta is %e  J^2*m^6",beta)
