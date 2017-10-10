// Problem 8.6,Page no.209

clc;clear;
close;

W=200 //N //weight 
v=4 //m/s //velocity of spring
sigma=600 //MPa //max allowable stress in spring
G=80 //GPa //Modulus of rigidity
rho=78000 //N/m**3 //density
d=8 //mm //diameter of spring
D=5 //cm //Mean Diameter of coil


//Calculation 

E=W*v**2*(2*9.81)**-1 //N*m //Kinetic Energy //Notification has been changed

//U=sigma_s**2*V*(4*G)**-1 //Strain Energy stored inthe spring

//After substituting values in above equation and simplifying we get
V=163.1*4*80*10**9*((600*10**6)**2)**-1  //Volume 

W=rho*V //N //Weight of spring

//Now V=%pi*4**-1*d**2*%pi*D*n
//After substituting values in above equation and simplifying we get
n=0.000145*4*(%pi**2*0.008**2*0.05)**-1 //number of turns of spring

//T=P*R=%pi*16**-1*d**3*sigma_s //Torsion
//After substituting values in above equation and simplifying we get
P=%pi*0.008**3*600*10**6*(0.025*16)**-1 //N

//Now U=P*dell*2**-1 
//Again,After substituting values in above equation and simplifying we get
dell=163.1*2*(2412.743)**-1*10**2 //cm

//Result
printf("The Max Deflection Produced is %.2f",dell);printf(" cm")
printf("\n Number of coil are %d",ceil(n))
