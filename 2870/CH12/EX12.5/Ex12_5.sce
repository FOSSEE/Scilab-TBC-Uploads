clc;clear;
//Example 12.5

//given data
T=20+273.15;//converted into K

//from Table A–11
vf=0.0008161;
vg=0.035969;

//calculations
//using Eq 12-22
// hfg= T*vfg*(dP/dT)sat
//(dP/dT)sat b/w 24 C - 16 C 
dPT=(646.18-504.58)/(24-16);//dP/dT ; values from Table A–11
vfg=vg-vf;
hfg=T*vfg*dPT;
disp(hfg,'the value of the enthalpy of vaporization of refrigerant-134a in kJ/kg')
