// Problem 8.2,Page no.207


clc;clear;
close;

L=15 //cm //Length of close coiled helical spring
U=50 //N*m //Strain energy
sigma_s=140 //MPa //Shear stress
D=10 //cm //Mean coil diameter
G=80 //GPa //Modulus of rigidity

R=D*2**-1 //cm //Mean coil Radius

//Calculations

//Let dell be the deflection of the spring when fully compressed
// 0.15-dell=n*d (Equation 1)
 
//U=(sigma_s)**2*V*(4*G)**-1 //Strain energy

//After substituting values in above equation and simolifying we get
V=50*4*80*10**9*((140*10**6)**2)**-1 //m**3 //Volume of spring

//But V=%pi*4**-1*d**2*2*%pi*R*n
//After substituting values in above equation and simolifying we get
//n=3.308*10**-3*(d**2)**-1 //Number of turns

//We know, T=P*R 
//Now substituting values in T and simolifying we get
//P=549.7787*10**6*d**3  //Load

//U=P*dell*2**-1
//After substituting values in above equation and simolifying we get
//dell=0.18189*10**-6*d**3 //Deflection 

//After substituting values in above equation and simolifying we get

//d**3-22.0533*10**-3*d**2-1.21261*10**-6=0

Coeff=[1 -22.0533*10**-3 0 -1.21261*10**-6]
d=roots(Coeff)  //Diameter of steel wire
n=3.308*10**-3*((d(1)**2)**-1) //no.of coils

//Result
printf("Diameter of steel wire is %.5f m",d(1))
printf("\n number of coils  = %d",ceil(n))
