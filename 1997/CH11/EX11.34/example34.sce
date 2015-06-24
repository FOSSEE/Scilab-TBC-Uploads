//Chapter-11 example 34
//=============================================================================
clc;
clear;
//input data
Pt = 500*10^3;//peal pulse power in watts
Pmin = 1*10^-12;//minimum receivable power
Ac   = 5;//area of capture in m^s
RCS  = 16;//radar cross sectional area in m^2
F    = 10*10^9;//radar operating frequency
Vo   = 3*10^8;//vel of Em wave in m/s;

//calculations
lamda = Vo/F;//wavelength

Rmax = ((Pt*Ac*Ac*RCS)/(4*%pi*lamda*lamda*Pmin))^0.25;

//output
mprintf('Maximum Radar range of the Radar system is %g Kms\n',Rmax/1000);
mprintf(' Note:Calculation mistake in textbook instead of RCS,RCS^2 is calculated');
//===============end of the program============================================
