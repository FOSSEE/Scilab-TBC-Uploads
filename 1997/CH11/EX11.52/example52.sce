//Chapter-11 example 52
//=============================================================================
clc;
clear;
//input data
Pt   = 1*10^6;         //peak pulse power in watts
Pmin = 1*10^-12;       //minimum receivable power
Ae   = 16;             //effective area in m^s
RCS  = 4;              //radar cross sectional area in m^2
F    = 9*10^9;         //radar operating frequency
Vo   = 3*10^8;         //vel of Em wave in m/s;
G    = 5000;           //Power gain of antenna

//calculations

Rmax = ((Pt*G*Ae*RCS)/(16*%pi*%pi*Pmin))^0.25;

//output
mprintf('Maximum Radar range of the Radar  is %g Kms',Rmax/1000);

//==============end of the program=============================================
