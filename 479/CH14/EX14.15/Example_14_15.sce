//Chemical Engineering Thermodynamics
//Chapter 14
//Thermodynamics of Chemical Reactions

//Example 14.15
clear;
clc;

//Given
//C3H8 = C3H6 + H2... (i)
//C3H8 = C2H4 +CH4...(ii)
Kp1 = 7.88;//Equilibrium constant of equation (i)
Kp2 = 775;//Equilibrium constant of equation (ii)
T = 760+273;//Temperature in K

//To Calculate the equilibrium composition of the mixture
//Basis: 1 mole of C3H8 in feed
//From the equations (a) &(b) (page no 343); y/x = z (say)
z = (Kp2/Kp1)^(1/2);
//Substituting y = z*x in equation(a), we got the equation p:
x = poly(0,'x')
p = (1+Kp1+Kp1*(z^2)+2*Kp1)*x^2 - Kp1;
q = roots(p);
x = q(1);
y = z*x;
mprintf('Moles of H2, C3H6, C2H4 and CH4 formed at equilibrium are %f %f %f %f respectively.',x,x,y,y);
//end