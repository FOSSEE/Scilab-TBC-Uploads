// Problem 8.15,Page no.216

clc;clear;
close;

alpha=30 //degree //helix angle
dell=2.3*10**-2 //m //Vertical displacement
W=40 //N //Axial Load
d=6*10**-3 //steel rod diameter
E=200*10**9 //Pa 
G=80*10**9 //Pa 

//Calculations

//from equation of deflection of the spring under the Load we get
//R**3*n=8.49*10**-4 

//Let R**3*n=X
X=8.49*10**-4  //Equation 1

//from equation of angular rotation
//R**2*n=8.1*10**-3

//Let R**2*n=Y
Y=8.1*10**-3   //Equation 2

//After dividing equation 1 by equation 2 we get R 
//Let Z=R

Z=X*Y**-1
R=Z*10**2 //cm //Mean Radius

//Result
printf("Mean Radius of Open coiled spring of helix angle is %.2f",R);printf(" cm")
