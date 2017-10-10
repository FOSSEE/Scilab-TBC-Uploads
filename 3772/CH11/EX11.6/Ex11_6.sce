// Problem 11.11.6,Page no.278

clc;clear;
close;

//d=Diameter of rod
P=500 //KN
e=0.75 //cm //eccentricity

//calculation

//A=%pi*d**2*4**-1 //cm**2 //Area of rod
//sigma_d=P*A**-1 //KN/cm**2 //stress due to direct load

//After substituting value and simplifying we get,
//sigma_d=2000*(%pi*d**2)**-1 //KN/cm**2 

M=P*e //Kn*cm //Moment

//Z=%pi*d**3*32**-1 //cm**3 //section modulus
//sigma_b=M*Z**-1 //KN/cm**2 //Stress due to moment

//After substituting value and simplifying we get,
//sigma_b=12000*(%pi*d**3)**-1 //KN/cm**2

//Max stress 
//sigma=sigma_d+sigma_b 

//After substituting value and simplifying we get,
//2000*(%pi*d**2)**-1+12000*(%pi*d**3)**-1=12.5

//After simplifying we get,
//d**3-53.05*d-318.3=0

//From Synthetic Division we get d**2+4.73*d-42.918
a=1
b=-4.73
c=-42.918

X=b**2-(4*a*c)

d_1=(-b+X**0.5)*(2*a)**-1
d_2=(-b-X**0.5)*(2*a)**-1

//Result
printf("The minimum diameter of the rod is %.2f",d_1);printf(" cm")
