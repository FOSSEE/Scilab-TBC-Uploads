//Example 5_15_u1
clc();
clear;
//To calculate the Braggs angle 
h=6.63*10^-34      //Plancks Constant
m=9.1*10^-31
e=1.6*10^-19
v=80
lamda=h/sqrt(2*m*e*v)            //units in mts
lamda=lamda*10^9       //units in nm
a=0.35         //units in nm
h=1
k=1
l=1
d111=a/sqrt(h^2+k^2+l^2)        //units in nm            //units in nm
theta=asin(lamda/(2*d111))              //units in radians
theta=theta*180/%pi                  //units in degrees
printf("Braggs angle is theta=%.2fDegrees or 19Degrees40Minutes",theta)
