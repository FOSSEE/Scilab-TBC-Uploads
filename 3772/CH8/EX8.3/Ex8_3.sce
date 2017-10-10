// Problem 8.3,Page no.208

clc;clear;
close;

k=10 //KN/m //stiffness
L=40 //cm //Length of coil when adjascent coil touch each other
G=80 //GPa //Modulus of rigidity
//dell=0.002*n //Max compression

//Calculation

//k=G*d**4*(8*D**3*n)**-1 //Stiffness
//After substituting values in above equation and simolifying we get
//d**4=D**3*n*10**-6     (Equation 1)

//L=n*d, //After substituting values we get
//n=0.4*d**-1            (Equation 2)

//Again, d*D**-1=1*10**-1
//After solving above ratios we get,D=10*d

//After substituting values in Equation 1 And Equation 2 we get
d=(10**3*0.4*10**-6)**0.5*100 //cm
D=10*d //cm //Mean Diameter 
R=D*2**-1 //cm //Mean Radius
n=0.4*(d*10**-2)**-1 //Number of turns
dell=0.002*n*100 //Deflection

//k=P*dell**-1 
//after solving above equation we get
P=k*10**3*dell*10**-2 //N //Load

sigma_s_max=16*P*R*10**-2*(%pi*(d*10**-2)**3)**-1 //N/m**2 //Max shear stress

//Result
printf("The wire diameter is %.2f",d);printf(" cm")
printf("\n The Mean diameter is %.2f",D);printf(" cm")
printf("\n Max Load applied is %.2f",P);printf(" N")
printf("\n Max shear stress is %.f N/m^2",sigma_s_max)
