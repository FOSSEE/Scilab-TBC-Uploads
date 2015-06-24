// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-9,Example 8,Page 331
//Title: van der Waals constants
//================================================================================================================
clear 
clc

//INPUT
a=[1.3874;3.7890];//van der Waals constant of n-butane and n-octane in Pa(m^3/mol)^2
b=[0.1163*10^-3;0.237*10^-3];//van der Waals constant of n-butane and n-octane in m^3/mol

//CALCULATION
//For convenience, n-butane is taken as 1 and n-octane as 2
//Set K_ij=0 in Eq.(9.64) to compute the van der Waals constant (a_m) for an equimolar mixture of n-butane and n-octane
y1=0.5;//mole fraction of n-butane in the equimolar mixture
y2=0.5;//mole fraction of n-octane in the equimolar mixture
a_m=((y1^2)*a(1,:))+((2*y1*y2)*sqrt (a(1,:)*a(2,:)))+((y2^2)*a(2,:));//calculation of the van der Waals constant (a_m) using Eq.(9.64) in Pa(m^3/mol)^2
b_m=(y1*b(1,:))+(y2*b(2,:));//calculation of the van der Waals constant (b_m) using Eq.(9.65) in m^3/mol

//OUTPUT
mprintf("\n The van der Waals constant for an equimolar mixture of n-butane and n-octane, a_m = %0.4f Pa(m^3/mol)^2\n",a_m);
mprintf("\n The van der Waals constant for an equimolar mixture of n-butane and n-octane, b_m = %f m^3/mol\n",b_m);

//===============================================END OF PROGRAM===================================================
