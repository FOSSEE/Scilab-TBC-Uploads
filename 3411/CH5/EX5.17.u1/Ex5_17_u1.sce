//Example 5_17_u1
clc();
clear;
//To find the type of crystal and lattice parameter and atomic diameter 
lamda=0.171       //units in nm
theta=30            //units in degrees
//Assuming the metal is BCC
d110=lamda/(2*sin(theta*%pi/180))      //units in nm
h=1
k=1
l=0
a1=d110*sqrt(h^2+k^2+l^2)            //units in nm
a2=0.148*sqrt(4)
printf("The lattice parameter is a=%.3fnm but a=%.3fnm if we consider it as bcc hence it is not bcc",a1,a2)
//Assuming the metal is FCC
a1=0.171*sqrt(3)    //units in nm
a2=0.148*sqrt(4)    //units in nm
ad=a1/sqrt(2)         //units in nm
printf("\nIf we consider it as FCC a=%.3fnm hence it is FCC",a1)
printf("\n Atomic diameter is %.4fnm",ad)
