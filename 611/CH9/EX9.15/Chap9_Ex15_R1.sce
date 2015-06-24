// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-9,Example 15,Page 338
//Title: Enthalpy and entropy departure using the generalized compressibility factor correlation
//================================================================================================================
clear 
clc

//INPUT
T=600;//temperature of the equimolar n-butane and n-octane mixture in K
P=16;//pressure of the equimolar n-butane and n-octane mixture in bar
Tcm=497.3;//pseudocritical temperature of mixture taken from Example(9.10) in K
Pcm=31.47;//pseudocritical pressure of mixture taken from Example(9.10) in bar
Trm=1.21;//pseudoreduced temperature of the mixture taken from Example(9.10) (no unit)
Prm=0.51;//pseudoreduced pressure of the mixture taken from Example(9.10) (no unit)
w_butane=0.199;//acentric factor for n-butane (no unit)
w_octane=0.398;//acentric factor for n-octane (no unit)
R=8.314;//universal gas constant in J/molK

//CALCULATION
//For convenience, n-butane is taken as 1 and n-octane as 2
y1=0.5;//mole fraction of n-butane in the equimolar mixture
y2=0.5;//mole fraction of n-octane in the equimolar mixture
wm=(y1*w_butane)+(y2*w_octane);//calculation of the acentric factor for the mixture (no unit)
del_h0=0.380;//value of ((h0-h)/RTcm)_0 read from Fig.(8.6) corresponding to Prm and Trm (no unit)
del_h1=0.188;//value of ((h0-h)/RTcm)_1 read from Fig.(8.8) corresponding to Prm and Trm (no unit)
del_s0=0.22;//value of ((s0-s)/R)_0 read from Fig.(8.10) corresponding to Prm and Trm (no unit)
del_s1=0.18;//value of ((s0-s)/R)_1 read from Fig.(8.12) corresponding to Prm and Trm (no unit)
dep_h=((R*Tcm)*(del_h0+(wm*del_h1)))*10^-3;//calculation of the enthalpy departure using Eq.(8.62) in kJ/mol
dep_s=(R)*(del_s0+(wm*del_s1));//calculation of the entropy departure using Eq.(8.65) in J/molK

//OUTPUT
mprintf("\n The enthalpy departure of an equimolar mixture of n-butane and n-octane using the generalized compressibility factor correlation = %0.3f kJ/mol\n",dep_h);
mprintf("\n The entropy departure of an equimolar mixture of n-butane and n-octane using the generalized compressibility factor correlation = %f J/mol K\n",dep_s);

//===============================================END OF PROGRAM===================================================
