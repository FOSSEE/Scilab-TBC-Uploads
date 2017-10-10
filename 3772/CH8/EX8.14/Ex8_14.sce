// Problem 8.14,Page no.215

clc;clear;
close;

L=70 //cm //Length of Longest plate
n=10 //Number of turns
b_1=5 //cm //width of plates
P=3.5 //KN //central Load
t=6 //mm //thickness of plates
L=75 //cm //Length of plates
y_c=1.8 //cm //central deflection
sigma=190 //MPa //allowable bending stress
//b=12*t
E=200 //GPa //Modulus of Elasticity

//Calculation
//The Above Equation is in the form of ax**2+bx+c=0
a=1
b=-2.93*10**-3
c=-2.93*10**-4

y_c=3*P*L**3*(8*n*E*b*t**3)**-1 //Deflection (//Equation 1)
sigma=3*P*L*(2*n*b*t**2)**-1 //stress
//Dividing Equation 1 by Equation 2 we get
//y_c*sigma**-1=L**2*(4*E*t)**-1
//After substituting values in above equation and further simplifying we get
t=190*10**6*0.7**2*(1.8*10**-2*4*200*10**9)**-1*10**3 //thickness of plate
b=12*t //Width of plates

//sigma=3*2**-1*P*L*(n*b*t**2)**-1 //stress
//After substituting values in above equation and further simplifying we get
n=3*3.5*10**3*0.7*(2*190*10**6*0.077583*(6.465*10**-3)**2)**-1

//Now sigma*y**-1=E*R**-1 
//simplifying above equationwe get
R=200*10**9*6.465*10**-3*(2*190*10**6)**-1 //Radius of Curvature
a=L*10**-2*(2*n)**-1*10**3 //Overlap

//Result
printf("size of the plate is: %.2f",b);printf(" mm")
printf("\n                     : %.2f",t);printf(" mm")
printf("\n Overlap of plates is %.2f",a);printf(" mm")
printf("\n Number of plates is %d",ceil(n))
printf("\n The Radius of curvature is %.3f m",R)
