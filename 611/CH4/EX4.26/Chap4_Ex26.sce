// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-4,Example 26,Page 135
//Title:Standard enthalpy change at 400K
//================================================================================================================
clear 
clc

//INPUT

//The reaction is : C2H4(g)+H2O(g)--->C2H5OH(g)

del_H_vap=43.82;//enthalpy of vaporization of ethanol at 298.15K in kJ/mol

//Data taken from Appendix tables A.3 and A.4 have been given below:

del_Hf=[52.335;-241.997;0;-277.819];//standard enthalpies of formation of C2H4(g),H2O(g),C2H5OH(g),C2H5OH(l) at 298.15K in kJ
a=[4.196;28.850;20.691;0]//coefficients to compute isobaric molar heat capacity of C2H4(g),H2O(g),C2H5OH(g),C2H5OH(l) in J/molK
b=[154.565*10^-3;12.055*10^-3;205.346*10^-3;0]//coefficients to compute isobaric molar heat capacity of C2H4(g),H2O(g),C2H5OH(g),C2H5OH(l) in J/molK
c=[-81.076*10^-6;0;-99.793*10^-6;0]//coefficients to compute isobaric molar heat capacity of C2H4(g),H2O(g),C2H5OH(g),C2H5OH(l) in J/molK
d=[16.813*10^-9;0;18.825*10^-9;0]//coefficients to compute isobaric molar heat capacity of C2H4(g),H2O(g),C2H5OH(g),C2H5OH(l) in J/molK
e=[0;1.006*10^5;0;0];//coefficients to compute isobaric molar heat capacity of C2H4(g),H2O(g),C2H5OH(g),C2H5OH(l) in J/molK
//where Cp0=a+bT+cT^2+dT^3+eT^-2

T1=298.15;//Ambient temeprature in K
T2=400;//temperature at which the standard enthalpy change has to be determined in K
n_C2H4=-1;//stoichiometric coefficient (no unit)
n_H2O=-1;//stoichiometric coefficient (no unit)
n_C2H5OH=1;//stoichiometric coefficient (no unit)

//CALCULATION

//The standard enthalpy of formation of C2H5OH(g) can be obtained from the following reactions:
//2C(s)+3H2(g)+(1/2)O2(g)--->C2H5OH(l)
//C2H5OH(l)--->C2H5OH(g)

del_Hf_C2H5OH_g=del_Hf(4,:)+del_H_vap;//calculation of standard enthalpy of formation of C2H5OH(g) at 298.15K in kJ
del_Hr=(n_C2H5OH*del_Hf_C2H5OH_g)+(n_C2H4*del_Hf(1,:))+(n_H2O*del_Hf(2,:));//calculation of standard enthalpy change of reaction in kJ
del_a=(n_C2H4*a(1,:))+(n_H2O*a(2,:))+(n_C2H5OH*a(3,:));//calculation of del_a using Eq.(4.83)
del_b=(n_C2H4*b(1,:))+(n_H2O*b(2,:))+(n_C2H5OH*b(3,:));//calculation of del_b using Eq.(4.83)
del_c=(n_C2H4*c(1,:))+(n_H2O*c(2,:))+(n_C2H5OH*c(3,:));//calculation of del_c using Eq.(4.83)
del_d=(n_C2H4*d(1,:))+(n_H2O*d(2,:))+(n_C2H5OH*d(3,:));//calculation of del_d using Eq.(4.83)
del_e=(n_C2H4*e(1,:))+(n_H2O*e(2,:))+(n_C2H5OH*e(3,:));//calculation of del_e using Eq.(4.83)
del_H0=(del_Hr*10^3)-((del_a*T1)+((del_b/2)*T1^2)+((del_c/3)*T1^3)+((del_d/4)*T1^4)-(del_e/T1));//calculation del_H0 in kJ using Eq.(4.82)
//calculation of the standard enthalpy of reaction at 400K in kJ
del_Hr_T2=(del_H0+((del_a*T2)+((del_b/2)*T2^2)+((del_c/3)*T2^3)+((del_d/4)*T2^4)-(del_e/T2)))*10^-3;

//OUTPUT
mprintf('\n The standard enthalpy change at 400K for the reaction C2H4(g)+H2O(g)--->C2H5OH(g)= %f kJ\n',del_Hr_T2);

//===============================================END OF PROGRAM===================================================



