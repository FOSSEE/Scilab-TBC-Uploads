// Problem 8.5,Page no.210

clc;clear;
close;

d=6 //mm //Diameter of steel wire
n=50 //number of turns
D=5 //cm //Mean Diameter
R=D*2**-1 //cm //Radius of coil
G=80 //GPa //Modulus of Rigidity
P=150 //KN //Load

//Calculation

//Dell=64*P*R**3*n*(G*d**4)**-1 //Deflection
//After substituting values in above equation and simplifying we get
//P=2073.6*dell //Gradually applied equivalent Load

//loss of potential Energy of the weight=Gain of strain Energy of the spring
//150*(0.05+dell)=P*dell*2**-1
//After substituting values in above equation we get

//dell**2-0.1446*dell-0.00723=0
//Above Equation is in the form of ax^2+bx+c=0

a=1
b=-0.1446
c=-0.00723

//First computing value of  b^2-4ac and store it in a variable say X
X=b**2-(4*a*c)
//now roots are given as x=(-b+X**0.5)/(2*a) and second root is negative sign before X


dell_1=(-b+X**0.5)*(2*a)**-1*10**2
dell_2=(-b-X**0.5)*(2*a)**-1*10**2

P=2073.6*dell_1*10**-2 //N 

sigma=16*P*R*10**-2*(%pi*(d*10**-3)**3)**-1 //N/m**2 //Max stress

//Result
printf("The Max Extension of the Spring is %.2f",dell_1);printf(" cm")
printf("\n The Max stress is %.3e N/m^2",sigma)
