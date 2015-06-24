clc
//Chapter8
//Example8.6, page no 317
//GivenR=0.01
R=0.01,l=1e3
L=1e-6
G=1e-6
C=0.001e-6
f=1.59e3// operating freq
w=2*%pi*f// angular freq
//a
Zo=sqrt((R+(%i*w*L))*0.35/(G+(%i*w*C)))//characteristic impedance
[Z0r,Z0i]=polar(Zo)
//b

Beta=sqrt(0.5*(sqrt((((R^2)+(round(w^2)*(L^2)))*(round(G^2)+(round(w^2)*(C^2)))))-(round(R*G)-((w^2)*L*C))))//Phase constant

v=w/Beta//phase velocity

//c
Alpha=sqrt(0.5*(sqrt((((R^2)+((w^2)*(L^2)))*((G^2)+((w^2)*(C^2)))))+((R*G)-((w^2)*L*C))))//attenuation constant
Vs=1//Assumed for easeof calculation
A=(Vs-(Vs*exp(-Alpha*l)))*100
mprintf('The characteristic impedance Zo= %f /_%f \n',Z0r,Z0i*180/%pi)
mprintf('The Phase velocity is: v= %3.2e m/sec\n Percent decrease in the voltage is %f%c',v,A,'%')

// Note :  There are some calculation errors in the solution presented in the book
