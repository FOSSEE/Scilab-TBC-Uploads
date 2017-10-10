// Problem no 9.5,Page no.235

clc;clear;
close;

L=4 //m //Length of column
W=250 //KN //Safe Load
FOS=5 //Factor of safety
//d=0.8*D //Internal diameter is 0.8 times Extarnal Diameter
sigma_c=550 //MPa //Compressive stress
alpha=1*1600**-1 //constant

//Calculations

P=W*FOS //N //Crippling Load

//A=%pi*4**-1(D**2-d**2) //m**2 //Area of hollow cyclinder
//After substituting value of d we get

//A=%pi*0.09*D**2

//I=%pi*64**-1*(D**4-d**4) //m**4 //Mo,ent Of Inertia
//After substituting value of d we get d we get

//I=0.009225*%pi*D**4

//K=(I*A**-1)**0.5 //Radius of Gyration
//After substituting value of I and A and further simplifying we get
//K=0.32*D

//Now using the Relation we get
//P=sigma_c*A*(1+alpha*(l_e*k)**2)**-1 //Rankines Formula
//Now Substituting values in above equation we get
//125*10**4=550*10**6*%pi*0.09*D**2*(1+1*1600**-1*((2*0.32)**2)**-1)**-1

//Further simplifying and rearranging we get
//D**4-0.008038*D**2-0.0001962397=0

a=1
b=-0.008038
c=-0.0001962397

X=b**2-4*a*c

D_1=((-b+X**0.5)*(2*a)**-1)**0.5*10**2
D_2=((-b-X**0.5)*(2*a)**-1)**0.5

//Thus Diameter cannot be negative, discard value of D_2
d=0.8*D_1

//Result
printf("The Minimum Diameter is %.2f",d);printf(" cm")
