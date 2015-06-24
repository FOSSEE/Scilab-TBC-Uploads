// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-14,Example 15,Page 517
//Title: Decomposition pressure
//================================================================================================================
clear 
clc

//INPUT
//The reaction is given by: CaCO3(s)--->CaO(s)+CO2(g)
T=1200;//temperature in K
T0=298.15;//reference temperature in K
//The isobaric molar capacity is given by Cp=a+bT+cT^2+dT^3+eT^-2 in J/molK and T is in K 
//coefficient in the expression for computing the isobaric molar heat capacity (for CaO(s),CO2(g),CaCO3(s) respectively)
a=[41.84;45.369;82.34];
//coefficient in the expression for computing the isobaric molar heat capacity (for CaO(s),CO2(g),CaCO3(s) respectively)
b=[20.25*10^-3;8.688*10^-3;49.75*10^-3];
//coefficient in the expression for computing the isobaric molar heat capacity (for CaO(s),CO2(g),CaCO3(s) respectively)
c=[0;0;0];
//coefficient in the expression for computing the isobaric molar heat capacity (for CaO(s),CO2(g),CaCO3(s) respectively)
d=[0;0;0];
//coefficient in the expression for computing the isobaric molar heat capacity (for CaO(s),CO2(g),CaCO3(s) respectively)
e=[-4.51*10^5;-9.619*10^5;-12.87*10^5];
del_Gf=[-604.574;-394.815;-1129.515]//Standard Gibbs free energies of formation of (CaO(s),CO2(g),CaCO3(s)) in kJ
del_Hf=[-635.975;-393.978;-1207.683]//Standard enthalpies of formation of (CaO(s),CO2(g),CaCO3(s))in kJ
n=[1;1;-1];//stoichiometric coefficients of CaO(s),CO2(g) and CaCO3(s) respectively (no unit)
R=8.314;//universal gas constant in J/molK

//CALCULATION
del_G=(n(1,:)*del_Gf(1,:))+(n(2,:)*del_Gf(2,:))+(n(3,:)*del_Gf(3,:));//calculation of the Gibbs free energy of reaction in kJ
del_H=(n(1,:)*del_Hf(1,:))+(n(2,:)*del_Hf(2,:))+(n(3,:)*del_Hf(3,:));//calculation of the enthalpy of the reaction in kJ
//Framing the isobaric molar heat capacity expression
del_a=(n(1,:)*a(1,:))+(n(2,:)*a(2,:))+(n(3,:)*a(3,:));
del_b=(n(1,:)*b(1,:))+(n(2,:)*b(2,:))+(n(3,:)*b(3,:));
del_c=(n(1,:)*c(1,:))+(n(2,:)*c(2,:))+(n(3,:)*c(3,:));
del_d=(n(1,:)*d(1,:))+(n(2,:)*d(2,:))+(n(3,:)*d(3,:));
del_e=(n(1,:)*e(1,:))+(n(2,:)*e(2,:))+(n(3,:)*e(3,:));
//Using Eq.14.21 to compute the value of del_H0 in kJ
del_H0=((del_H*10^3)-((del_a*T0)+((del_b/2)*T0^2)+((del_c/3)*T0^3)+((del_d/4)*T0^4)-(del_e/T0)))*10^-3;
//Using Eq.14.23 to compute the value of IR (no unit)
IR=(1/(T0))*((del_H0*10^3)-(del_a*T0*log(T0))-((del_b/2)*T0^2)-((del_c/6)*T0^3)-((del_d/12)*T0^4)-((del_e/2)*(1/T0))-(del_G*10^3));
//Using Eq.14.23 to compute the Gibbs free energy of the reaction at T in kJ
del_G_T=((del_H0*10^3)-(del_a*T*log(T))-((del_b/2)*T^2)-((del_c/6)*T^3)-((del_d/12)*T^4)-((del_e/2)*(1/T))-(IR*T))*10^-3;
Ka=exp((-del_G_T*10^3)/(R*T));//calculation of the equilibrium constant (no unit)
//Now, Ka=(a_CaO*a_CO2)/a_CaCO3. We get a_CaO=1 and a_CaCO3=1, if we choose the pure component solids CaO(s) and CaCO3(s) at 1200K(at T)and 1 bar pressure as the  standard states. Then, Ka=a_CO2=(f/f0)_CO2=((phi*y*P)/f0)_CO2. Assume the gas phase (pure CO2) is ideal. Then, phi=1 and y=1. The usual standard state for the gas gives f0=1 bar.Therefore, Ka=P
y=1;
phi=1;
f0=1;
P=(Ka*f0)/(phi*y);//calculation of the decomposition pressure in bar

//OUTPUT
mprintf('\n The decomposition pressure,P=%f bar \n',P);

//===============================================END OF PROGRAM===================================================

//DISCLAIMER: THE TEXTBOOK, GIVES A VALUE OF 2.42 bar FOR THE VALUE OF THE DECOMPOSITION PRESSURE. HOWEVER, THE ACTUAL VALUE IS ONLY 2.38 bar AND NOT 2.42 bar AS PRINTED IN THE TEXTBOOK. 
