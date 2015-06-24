// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-4,Example 10,Page 105
//Title:Final temperature
//================================================================================================================
clear 
clc

//INPUT
N=100;//number of moles of carbon dioxide in mol
T1=298;//initial temperature in K
Q=1;//energy added as heat in MJ
a=45.369;//coefficient in the specific heat capacity expression where Cp=a+bT+eT^-2
b=8.688*10^-3;//coefficient in the specific heat capacity expression where Cp=a+bT+eT^-2
e=-9.619*10^5;//coefficient in the specific heat capacity expression where Cp=a+bT+eT^-2
//Where Cp is in J/molK

//CALCULATION
delh=Q*10^6/N;//calculation of enthalpy in J
Tguess=520;//The final temperature guess value in K used for solving the system of equations
//The system of equations are defined by :
//T2=T1+(delh/Cpm)--->A
//Cpm=a+(b*Tm)+(e/T1T2)--->B
Cpm_guess=a+(b*((T1+Tguess)/2))+(e/(T1*Tguess));//calculation of Cpm guess (in J/molK) to be used to determine T2 from Equation A
T2_guess=T1+(delh/Cpm_guess);//calculation of T2 using Equation A (in K) based on the value of Cpm guess computed using Equation B
tolerance=1e-6;//defining the tolerance limit to obtain convergence
while abs(T2_guess-Tguess)>tolerance
    Tguess=T2_guess;
    Cpm_guess=a+(b*((T1+Tguess)/2))+(e/(T1*Tguess));
    T2_guess=T1+(delh/Cpm_guess);//the iteration process to solve the system of equations
end
T2=T2_guess;//value of the final temperature of CO2 obtained upon solving the system of equations(A and B) in K 

//OUTPUT
mprintf('\n The final temperature= %0.1f K\n',T2);

//===============================================END OF PROGRAM===================================================
