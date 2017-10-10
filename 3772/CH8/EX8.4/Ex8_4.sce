// Problem 8.4,Page no.209

clc;clear;
close;

G=80 //GPa //Modulus of rigidity
P=1 //KN //Load
dell=10 //cm //Deflection
sigma_s=350 //MPa //Max shear stress
rho=78000 //N/m**3 //Density of materials

//Calculations

U=P*1000*dell*10**-2*2**-1 //N*m //Energy stored

//Again U=sigma_s**2*V*(4*G)**-1 
//After substituting values in above equation and further simplifying we get
V=50*4*80*10**9*((350*10**6)**2)**-1 //m**3 //Volume

W=V*rho //N //Weight

//Now T=P*R=%pi*d**3*sigma_s*16**-1
//After substituting values in above equation and further simplifying
D=(10**6*16*(2*%pi*350*10**6)**-1)**0.5*10**2 //cm //Mean diameter of coil

k=P*10**3*(dell*10**-2)**-1 //stiffness

//Also k=D*n**-1*10**6
//After substituting values in above equation and further simplifying
n=10**6*D*10**-2*k**-1 //number of turns

//Result
printf("The Value of weight is %.3f N",W)
printf("\n Mean coil diameter is %.2f",D);printf(" cm")
printf("\n The number of Turns is %.d",ceil(n))
