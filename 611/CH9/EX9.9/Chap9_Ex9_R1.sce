// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-9,Example 9,Page 333
//Title: Molar volume of an equimolar mixture
//================================================================================================================
clear 
clc

//INPUT
T=600;//temperature of the equimolar n-butane and n-octane mixture in K
P=16;//pressure of the equimolar n-butane and n-octane mixture in bar
Tc=[425.2;569.4];//critical temperature of n-butane and n-octane in K
Pc=[37.97;24.97];//critical pressure of n-butane and n-octane in bar
R=8.314;//universal gas constant in J/molK

//CALCULATION
//Calculation by Amagat's law of additive volumes
//For convenience, n-butane is taken as 1 and n-octane as 2
y1=0.5;//mole fraction of n-butane in the equimolar mixture 
y2=0.5;//mole fraction of n-octane in the equimolar mixture
Tr1=T/Tc(1,:);//calculation of reduced temperature of n-butane (no unit)
Pr1=P/Pc(1,:);//calculation of reduced pressure of n-butane (no unit)
Z1_0=0.95;//value of Z1_0 taken from the generalized compressibility chart, Figure(3.11) corresponding to Tr1 and Pr1 (no unit)
Tr2=T/Tc(2,:);//calculation of reduced temperature of n-octane (no unit)
Pr2=P/Pc(2,:);//calculation of reduced pressure of n-octane (no unit)
Z2_0=0.785;//value of Z2_0 taken from the generalized compressibility chart, Figure(3.11) corresponding to Tr2 and Pr2 (no unit)
//Part a: Using the Amagat's law of additive volumes
Zm=(y1*Z1_0)+(y2*Z2_0);//calculation of the compressibility of the mixture using Eq.(9.96) (no unit)
vm=(Zm*R*T)/(P*10^5);//calculation of the molar volume of the equimolar mixture in m^3/mol

//Calculation by Dalton's law of additive pressures
//The compressibility factors for the pure components are to be evaluated at the mixture temperature and pure component pressure in Dalton's law of additive pressures. As the pure component pressures are not known, they are assumed to be equal to the partial pressure
P1=y1*P;//pure component pressure in bar
P2=y2*P;//pure component pressure in bar
Pr1=P1/Pc(1,:);//calculation of reduced pressure of n-butane (no unit)
Pr2=P2/Pc(2,:);//calculation of reduced pressure of n-octane (no unit)
Z1_0=0.97;//value of Z1_0 taken from the generalized compressibility chart, Figure(3.11) corresponding to Tr1 and Pr1 (no unit)
Z2_0=0.91;//value of Z2_0 taken from the generalized compressibility chart, Figure(3.11) corresponding to Tr2 and Pr2 (no unit)
Zm=(y1*Z1_0)+(y2*Z2_0);//calculation of the compressibility of the mixture using Eq.(9.96) (no unit)
vm_dalton=(Zm*R*T)/(P*10^5);//calculation of the molar volume of the equimolar mixture in m^3/mol
//Recalculation of P1 and P2 to verify the initial assumption
P1=((Z1_0*y1*R*T)/(vm_dalton))*10^-2;//P1 recalculated in bar
P2=((Z2_0*y2*R*T)/(vm_dalton))*10^-2;//P2 recalculated in bar
Pr1=P1/Pc(1,:);//recalculation of reduced pressure of n-butane (no unit)
Pr2=P2/Pc(2,:);//recalculation of reduced pressure of n-octane (no unit)
Z1_0_new=0.97;//value of Z1_0_new taken from the generalized compressibility chart, Figure(3.11) corresponding to Tr1 and Pr1 (no unit)
Z2_0_new=0.91;//value of Z2_0_new taken from the generalized compressibility chart, Figure(3.11) corresponding to Tr2 and Pr2 (no unit)
if Z1_0_new==Z1_0 & Z2_0_new==Z2_0 then
    vm_new=vm_dalton;//molar volume of the equimolar mixture in m^3/mol
else
    Zm=(y1*Z1_0_new)+(y2*Z2_0_new);//calculation of the compressibility of the mixture using Eq.(9.96) (no unit)
    vm_new=(Zm*R*T)/(P*10^5);//calculation of the molar volume of the equimolar mixture in m^3/mol
end

//OUTPUT
mprintf("\n The molar volume of an equimolar mixture of n-butane and n-octane found using the Amagats law of additive volumes = %0.4e m^3/mol\n",vm);
mprintf("\n The molar volume of an equimolar mixture of n-butane and n-octane found using the Daltons law of additive pressures = %0.2e m^3/mol\n",vm_new);

//===============================================END OF PROGRAM===================================================


