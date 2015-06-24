// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-5,Example 12,Page 177
//Title: Minimum work to be done for separation
//================================================================================================================
clear 
clc

//INPUT
N=1;//amount of air to be separated into its components in kmol
P=0.1;//pressure of air in MPa
T=300;//temperature of air in K
per_oxygen=21;//percentage of oxygen in air
per_nitrogen=79;//percentage of nitrogen in air
R=8.314;//universal gas constant in J/molK

//CALCULATION

//From the first law of thermodynamics, del_U=Q-W. As air is considered as an ideal gas, U is a function of temperature alone.Here, both pure nitrogen and 
//pure oxygen are at the same temperature in the initial and the final states. Therefore, del_U=0. This implies that W=Q

//From the second law of thermodynamics ,Eq.(5.32), ds=(dQ/T), therefore, Q=T*del_S, hence, W=T*del_s
x1=per_nitrogen/100;//calculation of mole fraction of nitrogen (no unit)
x2=per_oxygen/100;//calculation of mole fraction of oxygen (no unit)
W=(T*N*10^3*R*((x1*log (x1))+(x2*log (x2))))*10^-3;//calculation of the work to be done based on the above formula in kJ, del_S is computed using Eq.(5.47)

//OUTPUT
mprintf("\n Minimum work to be done to separate 1kmol of air at 0.1MPa and 300K into pure oxygen and nitrogen at the same temperature and pressure=%0.2f kJ\n",abs(W));


//===============================================END OF PROGRAM===================================================
