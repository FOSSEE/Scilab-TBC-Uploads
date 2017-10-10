clc;funcprot(0);//EXAMPLE 2.6
// Initialisation of Variables
alpha=13*10^-6;....//Coefficient of thermal expansion for Steel
l=10;..........//Original length of the Beam in m
dT=50;........//The temparture change in Degree celsius
Em=200*10^9;......//Elastic modulus of Steel in N/m^2
//CALCULATIONS
dL=alpha*l*dT;.....//Change in length of steel beam
s1=dL/l;........//Strain developed in steel beam
s2=Em*s1;......//Stress developed in steel beam
disp(dL,"(a)   Change in length of steel beam:")
disp(s1,"(b)   Strain developed in steel beam")
disp(s2,"(b)   Stress developed in steel beam")
