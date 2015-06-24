// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-3,Example 14,Page 75
//Title:Volume using generalized form of the Redlich-Kwong equation of state
//================================================================================================================
clear 
clc

//INPUT
T=427.85;//temperature of n-octane vapour in K
P=0.215;//pressure of n-ocatne vapour in MPa
Tc=569.4;//critical temperature of n-octane in K
Pc=2.497;//critical pressure of n-octane in MPa
R=8.314;//universal gas constant in (Pa m^3)/(mol K)

//CALCULATION
Tr=T/Tc;//calculation of reduced temperature (no unit)
Pr=P/Pc;//calculation of reduced pressure (no unit)
z_init=1;//taking a guess value of z (compressibilty factor) to get a value of h for solving the system
h=(0.08664*Pr)/(z_init*Tr);//calculation of h using Eq.(3.68)
tolerance=1e-6;//Framing the tolerance limit for the convergence of the equation
function[fn]=solver_func(zi)
    fn=zi-((1/(1-h))-((h/(1+h))*(4.93398/(Tr^(3/2)))));//Function defined for solving the system using Eq.(3.67)
endfunction
[z]=fsolve(h,solver_func,tolerance)//using inbuilt function fsolve for solving the system of equations
V=(z*R*T)/(P*10^6);//calculation of volume in m^3/mol using Eq.(3.59)

//OUTPUT
mprintf('\n The volume occupied by n-octane vapour obtained by the generalized form of Redlich-Kwong equation of state= %f m^3/mol\n',V);


//===============================================END OF PROGRAM===================================================
