// Problem 8.1,Page no.206

clc;clear;
close;

k=1 //KN/m //stiffness of spring
P=45 //N //Maximum Load
sigma_s=126 //MPa //Max shear stress
L=4.5 //cm //Lenght of spring
G=42 //GPa //Modulus of rigidity

//Calculations

//sigma_s_max=16*P*R*(%pi*d**3)**-1 //Max shear stress

//After substituting values in above equation and simolifying we get
//1000=42*10**9*d**4*(64*R**3*n)**-1   (//Equation 1)

//R=0.175*10**6*%pi*d**3 //Radius of spring (Equation 2)

//L=n*d //solid length of spring
//Thus simplifying above equation, n=L*d**-1

//substituting value of n and R in (equation 1) we get,

d=(42*10**9*(1000*64*4.5*10**-2*(0.175*%pi)**3*(10**6)**3)**-1)**0.25*10**2 //cm //diameter of helical spring

//substituting value d in (equation 2) we get,
R=0.175*10**6*%pi*(d)**3*10**-6*100 //cm //Radius of coil
D=2*R //cm //Mean diameter of coil
n=0.045*0.00306**-1 //Number of turns


//Result
printf("The Diameter of wire is %.3f cm",d)
printf("\n The Mean Diameter of coil is %.2f",D);printf(" cm")
