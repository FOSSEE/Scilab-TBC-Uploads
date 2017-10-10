// Problem 8.12,Page no.214

clc;clear;
close;

L=1.3 //m //Length of carriage spring
b=10 //cm //width of spring
t=12 //mm //thickness of spring
sigma=150 //MPa //Bending stresses
E=200 //GPa //Modulus of Elasticity
U=120 //N*m //Strain Energy

//Calculation

//V=n*b*t*L //Volume of carriage spring
//U=sigma**2*(6*E)**-1*V
//After substituting values in above equation and further simplifying we get
n=120*6*200*10**9*2*((150*10**6)**2*10*10**-2*12*10**-3*1.3)**-1

sigma_1=(120*6*200*10**9*2*(9*0.1*0.012*1.3)**-1)**0.5*10**-6 //MPa //Actual Bending stress

R=E*t*(2*sigma_1)**-1 //m 

//Result
printf("The number of plates is %d",ceil(n))
printf("\n Radius of curvature is %.3f m",R)
