// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-14,Example 5,Page 494
//Title: Conversion and composition of the equilibrium mixture
//================================================================================================================
clear 
clc

//INPUT
//Industrial methanol is produced by the following reaction:
//CO(g)+2H2(g)--->CH3OH(g)
T0=298.15;//standard temperature in K
T=500;//temperature in K
P=5;//pressure in bar
del_Hv=37.988;//enthalpy of vapourization of CH3OH at 298.15K in kJ/mol
R=8.314;//universal gas constant in J/molK
del_Gf=[-161.781;-137.327;0]//Standard Gibbs free energies of formation of CH3OH(g) from Example(14.2),CO(g) and H2(g) respectively in kJ
del_Hf=[-238.648;-110.532;0]//Standard enthalpies of formation of CH3OH(l), CO(g) and H2(g) respectively in kJ
//The isobaric molar capacity is given by Cp=a+bT+cT^2+dT^3+eT^-2 in J/molK and T is in K from Appendix A.3
//coefficient in the expression for computing the isobaric molar heat capacity from Appendix A.3 (for CH3OH(g),CO(g),H2(g) respectively)
a=[18.382;28.068;27.012];
//coefficient in the expression for computing the isobaric molar heat capacity from Appendix A.3 (for CH3OH(g),CO(g),H2(g) respectively)
b=[101.564*10^-3;4.631*10^-3;3.509*10^-3];
//coefficient in the expression for computing the isobaric molar heat capacity from Appendix A.3 (for CH3OH(g),CO(g),H2(g) respectively)
c=[-28.683*10^-6;0;0];
//coefficient in the expression for computing the isobaric molar heat capacity from Appendix A.3 (for CH3OH(g),CO(g),H2(g) respectively)
d=[0;0;0];
//coefficient in the expression for computing the isobaric molar heat capacity from Appendix A.3 (for CH3OH(g),CO(g),H2(g) respectively)
e=[0;-0.258*10^5;0.690*10^5];
n=[1;-1;-2];//stoichiometric coefficients of CH3OH(g),CO(g) and H2(g) respectively (no unit)
m=[0;1;2];//mole number in feed (for CH3OH(g),CO(g),H2(g) respectively)

//CALCULATION
del_Hf_CH3OH_g=del_Hf(1,:)+del_Hv;//calculation of the standard enthalpy of formation of CH3OH(g) in kJ
del_G=(n(1,:)*del_Gf(1,:))+(n(2,:)*del_Gf(2,:))+(n(3,:)*del_Gf(3,:));//calculation of the Gibbs free energy of reaction in kJ
del_H=del_Hf_CH3OH_g+(n(2,:)*del_Hf(2,:))+(n(3,:)*del_Hf(3,:));//calculation of the enthalpy of the reaction in kJ
//Framing the isobaric molar heat capacity expression
del_a=(n(1,:)*a(1,:))+(n(2,:)*a(2,:))+(n(3,:)*a(3,:));
del_b=(n(1,:)*b(1,:))+(n(2,:)*b(2,:))+(n(3,:)*b(3,:));
del_c=(n(1,:)*c(1,:))+(n(2,:)*c(2,:))+(n(3,:)*c(3,:));
del_d=(n(1,:)*d(1,:))+(n(2,:)*d(2,:))+(n(3,:)*d(3,:));
del_e=(n(1,:)*e(1,:))+(n(2,:)*e(2,:))+(n(3,:)*e(3,:));
//Using Eq.14.21 to compute the value of del_H0 in kJ
del_H0=((del_H*10^3)-((del_a*T0)+((del_b/2)*T0^2)+((del_c/3)*T0^3)+((del_d/4)*T0^4)-(del_e/T0)))*10^-3;
//Using Eq.14.23 to compute the integration constant (no unit)
I=(1/(R*T0))*((del_H0*10^3)-(del_a*T0*log(T0))-((del_b/2)*T0^2)-((del_c/6)*T0^3)-((del_d/12)*T0^4)-((del_e/2)*(1/T0))-(del_G*10^3));
//Using Eq.14.23 to compute the Gibbs free energy of the reaction at T in kJ
del_G_T=((del_H0*10^3)-(del_a*T*log(T))-((del_b/2)*T^2)-((del_c/6)*T^3)-((del_d/12)*T^4)-((del_e/2)*(1/T))-(I*R*T))*10^-3;
Ka=exp((-del_G_T*10^3)/(R*T));//calculation of the equilibrium constant (no unit)
del_n=n(1,:)+n(2,:)+n(3,:);//calculation of the total mole number (no unit)
Ky=Ka/((P)^del_n);//calculation of the equilibrium constant in terms of the mole fractions using Eq.(14.30) (no unit) (K_phi=1.0,assuming ideal gas behaviour)
mtot=m(1,:)+m(2,:)+m(3,:);//calculation of the total mole number of feed entering (no unit)
//To determine the degree of conversion, the inbuilt function fsolve is used to solve the equation given by Ky=(y_CH3OH)/(y_CO*y_H2^2), where y_CH3OH,y_CO,y_H2  are the mole fractions of CH3OH,CO,H2 respectively. Let the equilibrium conversion be denoted as E
E_guess=0.1;//taking a guess value for the degree of conversion,to be used in the inbuilt function fsolve (no unit)
tol=1e-6;//tolerance limit for convergence of the system  when using fsolve
function[fn]=solver_func(Ei)
    //Function defined for solving the system 
 fn=Ky-((((m(1,:)+(n(1,:)*Ei))/(mtot+(del_n*Ei)))^n(1,:))*(((m(2,:)+(n(2,:)*Ei))/(mtot+(del_n*Ei)))^n(2,:))*(((m(3,:)+(n(3,:)*Ei))/(mtot+(del_n*Ei)))^n(3,:)));
endfunction
[E]=fsolve(E_guess,solver_func,tol)//using inbuilt function fsolve for solving the system of equations
//Calculation of the composition of the equilibrium mixture (for CH3OH(g),CO(g),H2(g) respectively)(no unit)
y_CH3OH=(m(1,:)+(n(1,:)*E))/(mtot+(del_n*E));
y_CO=(m(2,:)+(n(2,:)*E))/(mtot+(del_n*E));
y_H2=(m(3,:)+(n(3,:)*E))/(mtot+(del_n*E));

//OUTPUT
mprintf('The degree of conversion at 500K and 5bar pressure=%0.4f\n',E);
mprintf('The composition of the equilibrium mixture at 500K and 5bar pressure: y_CH3OH=%0.4f\t y_CO=%0.4f\t y_H2=%0.4f\n',y_CH3OH,y_CO,y_H2);

//===============================================END OF PROGRAM===================================================
