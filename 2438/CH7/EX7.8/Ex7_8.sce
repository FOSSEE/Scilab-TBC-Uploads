//========================================================================
// chapter 7 example 8

clc;
clear;

// Variable Declaration
p   = 2;        // resistivity in ohm-m
er  = 16;       // relative dielectrivity of Ge cm^2/s
up  = 1800;      // mobility of holes in cm^2/s
e0  = 8.85*10^-12;      //permitivity in (m^-3)*(kg^-1)*(s^4)*(A^2)
a   = 2*10^-4;      //channel height in m

// Calculations
 qNa  = 1/(up*p);
 e    = e0*er;          //permitivity in F/cm
 Vp   = (qNa*(a^2))/(2*e);       // pinch-off voltage in V

// Result
mprintf('Pinch-off voltage = %3.4e V\n',Vp);
mprintf(' Note:calculation mistake in text book ,e value is taken as 14.16*10^-12 instead of 141.6*10^-12');

//============================================================================
