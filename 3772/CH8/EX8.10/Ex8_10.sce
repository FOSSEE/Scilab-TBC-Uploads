// Problem 8.10,Page no.213

clc;clear;
close;

L=75 //cm //Legth of Leaf spring
P=8 //KN //Load
y_c=20 //mm //Deflection
sigma=200 //MPa //Bending stress 
E=200 //GPa //modulus of Elasticity
//b=12*t

//Calculation

//y_c=sigma*L**2*(4*E*t)**-1 
//After substituting values and further simplifying we get
t=200*10**6*(75*10**-2)**2*(4*200*10**9*0.02)**-1*10**2 //Thickness of plate

b=12*t //width of plate

//Now using relation we get
//sigma=3*P*L*(2*n*b*t**2)**-1 
//After substituting values and further simplifying we get
n=3*8*10**3*0.75*(2*200*10**6*0.084*0.007**2)**-1

//Y_c=L**2*(8*R)**-1
R=(L*10**-2)**2*(8*y_c*10**-3)**-1 //m //Radius of spring

//Result
printf("The thickness of plate is %.2f",t);printf(" cm")
printf("\n The width of plate is %.2f",b);printf(" cm")
printf("\n The number of plate is %d",ceil(n))
printf("\n The Radius of plate is %.2f m",R)
