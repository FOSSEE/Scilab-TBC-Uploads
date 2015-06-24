// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-14,Example 13,Page 510
//Title: Equilibrium composition in a simultaneous reaction 
//================================================================================================================
clear 
clc

//INPUT
//The simultaneous reactions are given as:
//A+B--->C+D =>1
//A+C--->D+E =>2
Ka1=0.1429;//equilibrium constant of reaction 1 (no unit)
Ka2=2;//equilibrium constant of reaction 2 (no unit)
P=1;//pressure in bar
m=[1;1;0;0;0];//mole number in the feed (for A,B,C,D and E respectively) (equimolar mixture of A and B are present in the feed)
n1=[-1;-1;1;1;0];//stoichiometric coefficients for reaction 1 (A,B,C D,E respectively) (no unit)
n2=[-1;0;-1;1;1];//stoichiometric coefficients for reaction 2 (A,B,C D E respectively) (no unit)

//CALCULATION
del_n1=n1(1,:)+n1(2,:)+n1(3,:)+n1(4,:);//calculation of the total mole number for reaction 1 (no unit)
del_n2=n2(1,:)+n2(2,:)+n2(3,:)+n2(4,:);//calculation of the total mole number for reaction 2 (no unit)
//calculation of the equilibrium constant in terms of the mole fractions using Eq.(14.30) (no unit) (for reaction 1) (K_phi=1.0,assuming ideal gas behaviour)
Ky1=Ka1/(P^del_n1);
//calculation of the equilibrium constant in terms of the mole fractions using Eq.(14.30) (no unit) (for reaction 2) (K_phi=1.0,assuming ideal gas behaviour)
Ky2=Ka2/(P^del_n2);
mtot=m(1,:)+m(2,:)+m(3,:)+m(4,:)+m(5,:);//calculation of the total mole number of feed entering (no unit)
//To determine the degree of conversion, a trial and error process is used to solve the equations given by Ky1=(y_C*y_D)/(y_A*y_B), and Ky2=(y_D*y_E)/(y_A*y_C)  where y_A,y_B,y_C,y_D,y_E are the mole fractions of A,B,C,D and E respectively. Let the equilibrium conversion be denoted as epsilon1 for reaction 1 and epsilon2 for reaction 2 respectively.
epsilon1_guess=0.3;//taking a guess value for the degree of conversion (reaction1) for the trial and error process (no unit)
tol=1e-6;//defining the tolerance limit for obtaining the convergence of the system using fsolve
E_guess=0.1;//taking a guess value for the degree of conversion (reaction2) to be used for solving the set of equations by the inbuilt function fsolve
function[fn1]=solver_func1(En)
    //The system of equations to be solved for reaction 1
    fn1=Ky1-((((m(3,:)+(n1(3,:)*epsilon1_guess)+(n2(3,:)*En))/(mtot))^n1(3,:))*(((m(4,:)+(n1(4,:)*epsilon1_guess)+(n2(4,:)*En))/(mtot))^n1(4,:))*(((m(1,:)+(n1(1,:)*epsilon1_guess)+(n2(1,:)*En))/(mtot))^n1(1,:))*(((m(2,:)+(n1(2,:)*epsilon1_guess)+(n2(2,:)*En))/(mtot))^n1(2,:)));
endfunction
[epsilon2]=fsolve(E_guess,solver_func1,tol);//using inbuilt function fsolve for solving the system of equations
E_guess=0.2;//taking a guess value for the degree of conversion (reaction1) to be used for solving the set of equations by the inbuilt function fsolve
function[fn2]=solver_func2(Em)
    //For reaction 2, the degree of conversion(reaction2), determined above is used along with the guess value and the system of equations below are solved
fn2=Ky2-((((m(4,:)+(n1(4,:)*Em)+(n2(4,:)*epsilon2))/(mtot))^n2(4,:))*(((m(5,:)+(n1(5,:)*Em)+(n2(5,:)*epsilon2))/(mtot))^n2(5,:))*(((m(1,:)+(n1(1,:)*Em)+(n2(1,:)*epsilon2))/(mtot))^n2(1,:))*(((m(3,:)+(n1(3,:)*Em)+(n2(3,:)*epsilon2))/(mtot))^n2(3,:))); 
endfunction
[epsilon1]=fsolve(E_guess,solver_func2,tol);//using inbuilt function fsolve for solving the system of equations
//calculation of the equilibrium composition at 1 bar pressure of A,B,C,D and E respectively (no unit)
y_A=((m(1,:)+(n1(1,:)*epsilon1)+(n2(1,:)*epsilon2)))/(mtot);
y_B=(m(2,:)+(n1(2,:)*epsilon1)+(n2(2,:)*epsilon2))/(mtot);
y_C=((m(3,:)+(n1(3,:)*epsilon1)+(n2(3,:)*epsilon2)))/(mtot);
y_D=(m(4,:)+(n1(4,:)*epsilon1)+(n2(4,:)*epsilon2))/(mtot);
y_E=((m(5,:)+(n1(5,:)*epsilon1)+(n2(5,:)*epsilon2)))/(mtot);

//OUTPUT
mprintf('\nThe degree of conversion :epsilon1=%0.1f\t epsilon2=%0.1f \n',epsilon1,epsilon2);
mprintf('\nThe equilibrium composition at 1 bar pressure for an equimolar mixture of A and B fed to the reactor:\n y_A=%0.2f \t y_B=%0.2f \t y_C=%0.2f \t y_D=%0.2f \t y_E=%0.1f\n',y_A,y_B,y_C,y_D,y_E);


//===============================================END OF PROGRAM===================================================
