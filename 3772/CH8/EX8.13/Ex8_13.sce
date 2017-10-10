// Problem 8.13,Page no.215

clc;clear;
close;

P=200 //N //Load
h=10 //cm //Height of Load dropped
n=10 //Number of turns
b_1=5 //cm //width of plates
t=6 //mm //thickness of plates
L=75 //cm //Length of plates
E=200 //GPa //Modulus of Elasticity

//Calculaion

//Let P be the equivalent gradually applied load whuch would cause the same stress as is caused by the impact Load
//200(0.1+dell)=P*dell*2**-1 (Equation 1)

//dell=3*P*L**3*(8*E*n*b*t**3)**-1 //Deflection
//After substituting values in above equation and further simplifying we get
//P=136533.33*dell

//After substituting values of P in (equation 1) and further simplifying we get
//200(0.1+dell)=136533.33*dell**2*2**-1

//simplifying above equation we get
//dell**2-2.93*10**-3*dell-2.93*10**-4=0
//The Above Equation is in the form of ax**2+bx+c=0
a=1
b=-2.93*10**-3
c=-2.93*10**-4

//First computing value of  b^2-4ac and store it in a variable say X
X=b**2-(4*a*c)
//now roots are given as x=(-b+X**0.5)/(2*a) and second root is negative sign before X

dell_1=(-b+X**0.5)*(2*a)**-1
dell_2=(-b-X**0.5)*(2*a)**-1

//Now deflection cannot be negative so consider value of dell_1

P=136533.33*dell_1
sigma=3*P*L*10**-2*(2*n*b_1*10**-2*(t*10**-3)**2)**-1*10**-6 //MPa //Max instantaneous stress
R=(L*10**-2)**2*(8*dell_1)**-1 //Radius of curvature
 
//Result
printf("Max instantaneous stress in plates is %.2f",sigma);printf(" MPa")
printf("\n Radius of curvature of spring is %.2f",R);printf(" m")
