// Problem 8.16,Page no.217

clc;clear;
close;

n=10 //Number of coils
sigma=100 //MPa //Bending stress
sigma_s=110 //MPa //Twisting stress
//D=8*d
dell=1.8 //cm //Max extension of of wire
E=200 //GPa //Modulus of Elasticity
G=80 //GPa //Modulus od Rigidity

//Calculation

//M=W*R*sin_alpha=%pi*d**3*sigma_1*32**-1 //(Equation 1) //Bending moment
//As D=8*d 
//then R=D*2**-1
//Therefore, R=4*d

//Now substituting values in equation 1 we get
//W*sin_alpha=2454369.3*d**2  (Equation 2)

//T=W*R*cos_alpha=%pi*d**3*sigma_s //Torque  (Equation 3)  
//Now substituting values in equation 3 we get
//W*cos_alpha=5399612.4*d**2    (Equation 4)

//Dividing Equation 2 by Equation 4 we get,
//tan_alpha=0.4545
alpha=atan(0.4545)*180*%pi**-1

//From Equation 2 we get
//W=2454369.3*d**2*(sin24.443)**-1
//W=5931241.1*d**2   (Equation 5)

//dell=64*W*R**3*n*sec_alpha*(d**4)**-1*((cos_alpha)**2*G**-1+2*sin_alpha**2*E**-1)
//Now substituting values in above equation  we get
//W=33140.016*d  (Equation 6)

//From Equation 5 and Equation 6 we get
//5931241.1*d**2=33140.016*d
//After simplifying above equation we get
d=33140.016*5931241.1**-1 //m //Diameter of wire
W=33140.016*d //N //MAx Permissible Load

//Result
printf("The Max Permissible Load is %.2f",W);printf(" N")
printf("\n The Wire Diameter is %.6f m",d)
