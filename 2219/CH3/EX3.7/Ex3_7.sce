// Chapter 3 example 7
//------------------------------------------------------------------------------
clc;
clear;
// in the first case when the line is lamda/2 long, the i/p impedance is same as the load resistance
Zl      = 300;      // load resistance in ohm
Zo      = 75;       // charecteristic impedance in ohm

// calculations
//Zi      = Zo*((Zl + iZotanβl)/(Zo + iZltanβl))
//        = Zo*(((Zl/tanβl) + iZo))/((Zl/tanβl) + iZo)))
// for l = lamda/2 βl = (2* π/lamda)*(lamda/2) =  π
// therefore tanβl = 0 which gives Zi = Zl
// in the second case when the operating frequency is halved, the wavelength is douβled which means the same line is now lamda/4 long
// for l = lamda/4 ,βl = (2* π/lamda)*(lamda/4) =  π/2
// therefore tanβl = ∞
Zi         = (Zo^2)/Zl;  // input impedance

mprintf('Input impedance = %3.2f ohm',Zi);
//------------------------------------------------------------------------------

