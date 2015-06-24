// Chapter 4_Carrier Transport Phenomenon
//Caption_Conductivity
//Ex_2//page 144
T=300
Nd=5*(10^15)    //donor concentration
R=10   //resistance in kohm
J=50    //current density in A/cm^2
V=5   //voltage  in volts
i=V/R    //current
A=i/J    //cross sectional area
E=100
L=V/E   //length of the resistor
pho=L/(V*A)
// The conductivity of a compensated p-type semiconductor is
//pho=e*muP*(Na-Nd)
//where the mobilty is a function of the total ionized impurity concentration Na+Nd
//Using trial and error , if
 Na=1.25*(10^16)
 muP=410
 e=1.6*(10^-19)
sig=e*muP*(Na-Nd)
printf('Conductivity obtained is %1.2fd which is very close to the value we need',sig)