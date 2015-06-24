// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-14,Example 14,Page 515
//Title: Equilibrium concentration
//================================================================================================================
clear 
clc

//INPUT
//The reaction is given by :
//CH3COOH(l)+C2H5OH(l)--->CH3COOC2H5(l)+H2O(l)
T=100;//temperature in degree celsius
Kc=2.92;//equilibrium constant (in terms of concentration) at T (no unit)
v=1;//volume of the aqueous solution in m^3
m=[0;10;10;5];//feed composition of CH3COOC2H5(l),H20(l),C2H5OH(l),CH3COOH(l) respectively in kmol
n=[1;1;-1;-1];//stoichiometric coefficient for the reaction (no unit)(CH3COOC2H5(l),H20(l),C2H5OH(l),CH3COOH(l) respectively)

//CALCULATION
//For convenience, CH3COOH(l) is denoted as A, C2H5OH(l) is denoted as B, CH3COOC2H5(l) is denoted as C and H2O(l) as D
//Calculation of the extent of the reaction, expressed in concentration units.The inbuilt function fsolve is used for solving the set of equations
tol=1e-6;//tolerance limit framed for the convergence of the system of equations by using fsolve
Eguess=1;//taking a guess value for the extent of reaction (no unit)
function[fn]=solver_func(Ei)
    //Function defined for solving the system
    fn=Kc-(((m(1,:)+n(1,:)*Ei)^n(1,:))*((m(2,:)+n(2,:)*Ei)^n(2,:))*((m(3,:)+n(3,:)*Ei)^n(3,:))*((m(4,:)+n(4,:)*Ei)^n(4,:)));
endfunction
[E]=fsolve(Eguess,solver_func,tol);//using inbuilt function fsolve for solving the system of equations
C_A=(m(4,:)+n(4,:)*E);//equilibrium concentration of CH3COOH(l) (no unit)
C_B=(m(3,:)+n(3,:)*E);//equilibrium concentration of C2H5OH(l) (no unit)
C_C=(m(1,:)+n(1,:)*E);//equilibrium concentration of CH3COOC2H5(l) (no unit)
C_D=(m(2,:)+n(2,:)*E);//equilibrium concentration of H2O(l) (no unit)

//OUTPUT
mprintf('\n The extent of reaction, expressed in concentration units=%0.4f\n',E);
mprintf('\n The equilibrium concentration:C_A=%0.4f kmol/m^3 \t C_B=%0.4f kmol/m^3 \t C_C=%0.4f kmol/m^3 \t C_D=%0.4f kmol/m^3 \n',C_A,C_B,C_C,C_D);

//===============================================END OF PROGRAM===================================================

