// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-8,Example 3,Page 276
//Title: Enthalpy departure using Beattie-Bridgman equation of state
//================================================================================================================
clear 
clc

//INPUT
T=100;//temperature of carbon dioxide in degree celsius
P=10;//pressure of carbon dioxide in MPa
A0=0.5073;//Beattie-Bridgman constant for carbon dioxide in (Pa m^3)/mol^2
B0=104.76*10^-6;//Beattie-Bridgman constant for carbon dioxide in m^3/mol
a=71.32*10^-6;//Beattie-Bridgman constant for carbon dioxide in m^3/mol
b=72.35*10^-6;//Beattie-Bridgman constant for carbon dioxide in m^3/mol
C=660.0;//Beattie-Bridgman constant for carbon dioxide in (m^3 K^3)/mol
R=8.314;//universal gas constant in J/molK

//CALCULATION
//The virial form of the Beattie-Bridgman equation of state from Eq.(8.25) is given as:
//P=(A1/v)+(A2/v^2)+(A3/v^3)+(A4/v^4)

T=T+273.15;//conversion of temperature in K
A1=(R*T);//calculation of A1 using Eq.(8.27)
A2=(B0*R*T)-A0-((C*R)/T^2);//calculation of A2 using Eq.(8.28)
A3=(a*A0)-(b*B0*R*T)-((B0*C*R)/T^2);//calculation of A3 using Eq.(8.29)
A4=((b*C*B0*R)/T^2);//calculation of A4 using Eq.(8.30)
vguess=0.01;//taking a guess value of the volume,to be used for solving Eq.(8.25) using the function defined below, in m^3/mol
tolerance=1e-6;//Framing the tolerance limit for the convergence of the equation
function[fn]=solver_func(vi)
    fn=(P*10^6)-((A1/vi)+(A2/vi^2)+(A3/vi^3)+(A4/vi^4));//Function defined for solving the system given by Eq.(8.25)
endfunction
[v]=fsolve(vguess,solver_func,tolerance)//using inbuilt function fsolve for solving the system of equations, to determine the volume in m^3/mol
Z=(P*10^6*v)/(R*T);//calculation of compressibility factor (no unit)
//calculation of the enthalpy departure using Eq.(8.37) in J/mol
dep_h=(((B0*R*T)-(2*A0)-((4*C*R)/(T^2)))*(1/v))+((((3/2)*a*A0)-(b*B0*R*T)-((5*B0*C*R)/(2*(T^2))))*(1/(v^2)))+((2*b*C*B0*R)/((T^2)*(v^3)));

//OUTPUT
mprintf("\n Molar volume of CO2 at %0.f MPa and %0.2f K = %f m^3/mol \n",P,T,v);
mprintf("\n The compressibility factor=%f \n",Z);
mprintf("\n The enthalpy departure for carbon dioxide using the Beattie-Bridgman equation of state = %f J/mol\n",dep_h);


//===============================================END OF PROGRAM===================================================

//DISCLAIMER: THE PROBLEM STATEMENT GIVES THE TEMPERATURE AS 100 DEGREE CELSIUS, WHICH CORRESPONDS TO A TEMPERATURE OF 373.15K.  HOWEVER, IN THE COMPUTATION OF THE SECOND TERM IN THE ENTHALPY DEPARTURE EXPRESSION, THE AUTHOR HAS TAKEN THE TEMPERATURE TO BE  313.15K, WHICH CLEARLY IS A PRINTING ERROR. THE CODE ABOVE HAS BEEN WRITTEN FOR THE TEMPERATURE OF 373.15K, AS GIVEN IN THE PROBLEM STATEMENT.


