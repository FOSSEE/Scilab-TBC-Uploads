// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-14,Example 4,Page 492
//Title: Equilibrium constant with enthalpy of reaction varying with temperature
//================================================================================================================
clear 
clc

//INPUT
//The water gas shift reaction is given by: CO2(g)+H2(g)--->CO(g)+H2O(g)
P=0.1;//pressure in MPa
T1=298.15;//initial temperature in K
Ka1=8.685*10^-6;//equilibrium constant for the water-gas shift reaction at T1 (no unit) (from Example 14.1)
T2=1000;//temperature at which the equilibrium constant is to be found, in K
del_H=41.449;//standard enthalpy of the reaction at T1 in kJ (from Example 14.3)
//The isobaric molar capacity is given by Cp=a+bT+cT^2+dT^3+eT^-2 in J/molK and T is in K from Appendix A.3
//coefficient in the expression for computing the isobaric molar heat capacity from Appendix A.3 (for CO(g),H2O(g),CO2(g),H2(g) respectively)
a=[28.068;28.850;45.369;27.012];
//coefficient in the expression for computing the isobaric molar heat capacity from Appendix A.3 (for CO(g),H2O(g),CO2(g),H2(g) respectively)
b=[4.631*10^-3;12.055*10^-3;8.688*10^-3;3.509*10^-3];
//coefficient in the expression for computing the isobaric molar heat capacity from Appendix A.3 (for CO(g),H2O(g),CO2(g),H2(g) respectively)
c=[0;0;0;0];
//coefficient in the expression for computing the isobaric molar heat capacity from Appendix A.3 (for CO(g),H2O(g),CO2(g),H2(g) respectively)
d=[0;0;0;0];
//coefficient in the expression for computing the isobaric molar heat capacity from Appendix A.3 (for CO(g),H2O(g),CO2(g),H2(g) respectively)
e=[-0.258*10^5;1.006*10^5;-9.619*10^5;0.690*10^5];
n=[1;1;-1;-1];//stoichiometric coefficients of CO(g),H2O(g),CO2(g) and H2(g) respectively (no unit)
R=8.314;//universal gas constant in J/molK
Ka2_prev=1.0855;//equilibrium constant calculated in Example (14.3) without considering the variation of del_H between T1 and T2 (no unit)


//CALCULATION
//Framing the isobaric molar heat capacity expression
del_a=(n(1,:)*a(1,:))+(n(2,:)*a(2,:))+(n(3,:)*a(3,:))+(n(4,:)*a(4,:));
del_b=(n(1,:)*b(1,:))+(n(2,:)*b(2,:))+(n(3,:)*b(3,:))+(n(4,:)*b(4,:));
del_c=(n(1,:)*c(1,:))+(n(2,:)*c(2,:))+(n(3,:)*c(3,:))+(n(4,:)*c(4,:));
del_d=(n(1,:)*d(1,:))+(n(2,:)*d(2,:))+(n(3,:)*d(3,:))+(n(4,:)*d(4,:));
del_e=(n(1,:)*e(1,:))+(n(2,:)*e(2,:))+(n(3,:)*e(3,:))+(n(4,:)*e(4,:));
//Using Eq.14.21 to compute the value of del_H0 in kJ
del_H0=(del_H*10^3)-((del_a*T1)+((del_b/2)*T1^2)+((del_c/3)*T1^3)+((del_d/4)*T1^4)-(del_e/T1));
//Calculation of the integration constant using Eq.(14.22) (no unit)
I=(log(Ka1))-((1/R)*((-del_H0/T1)+(del_a*log(T1))+((del_b/2)*T1)+((del_c/6)*T1^2)+((del_d/12)*T1^3)+((del_e/(2*T1^2)))));
//calculation of the equilibrium constant at T2 using Eq.(14.22) (no unit)
Ka2=exp(((1/R)*((-del_H0/T2)+(del_a*log(T2))+((del_b/2)*T2)+((del_c/6)*T2^2)+((del_d/12)*T2^3)+((del_e/(2*T2^2)))))+I);

//OUTPUT
mprintf('The equilibrium constant for the water gas shift reaction at 1000K by taking into account the variation of del_H with temperature=%f \n',Ka2);
mprintf('The equilibrium constant for the water gas shift reaction at 1000K without considering the variation of del_H with temperature as given by Example(14.3)=%0.4f \n',Ka2_prev);


//===============================================END OF PROGRAM===================================================


