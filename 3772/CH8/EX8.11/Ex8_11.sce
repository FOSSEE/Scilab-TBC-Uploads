// Problem 8.11,Page no.214

clc;clear;
close;

L=75 //cm //span of laminated steel spring
P=7.5 //KN //Load
y_c=5 //cm //Central Deflection
sigma=400 //MPa //Bending stress
E=200 //GPa //Modulus of Elasticity
//b=12*t

//Calculations

//y_c=3*P*L**3*(8*E*n*b*t**3)**-1 //Deflection
//After substituting values and further simplifying we get
//nt**4=9.887*10**-9   (Equation 1)

//We Know sigma=3*P*L*(2*n*b*t**3)**-1 //bending stress
//Again after substituting values and further simplifying we get
//nt**3=1.757*10**-6   (Equation 2)

//After Divviding (Equation 1) by (Equation 2) we have
t=9.887*10**-9*(1.757*10**-6)**-1*10**2 //cm 

//substituting value of t in Equation 2) we get
n=1.757*10**-6*((t*10**-2)**3)**-1 //Number of plates
R=(L*10**-2)**2*(8*y_c*10**-2)**-1 //Radius of curvature

//Result
printf("The thickness of Plates is %.2f",t);printf(" cm")
printf("\n The Number of Plates is %d",ceil(n))
printf("\n The Radius of Curvature of Plates is %.2f",R);printf(" m")
