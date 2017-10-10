//Example 5_30
clc();
clear;
//To give an explanation for the differences between samples
lamda=0.152  //units in nm
h=1
k=1
l=1
theta1=21   //units in degrees
theta2=383   //units in degrees
d111a=lamda/(2*sin(theta1*%pi/180))    //units in nm
d111b=lamda/(2*sin(theta2*%pi/180))  //units in nm
alpha1=d111a*sqrt(h^2+k^2+l^2)  //units in nm
alpha2=d111b*sqrt(h^2+k^2+l^2)  //units in nm
printf("For sample A Alpha=%.3f nm",alpha1)
printf("\nFor sample B Alpha=%.3f nm",alpha2)
//In text book answers are printed wrong as 0.363nm and 0.361nm correct answers are 0.3 nm and 0.275nm
