// chapter 7 example 12
//-----------------------------------------------------------------------------
clc;
clear;
// given data
Zi      = 72;       // input impedance in ohms
// A    = 1.5a      // area of cross section in sq.cm
// Zif  = Zi*[(sum of areas of cross section of various components)/(Area of cross section of the driven element )]^2
// Zif  = 72*((a + 1.5a)/a)^2;
// Zif  = 72*(2.5*a/a)^2;
Zif     = 72*(2.5)^2;
mprintf('Input impedance for a folded dipole = %d Ω',Zif);
//------------------------------------------------------------------------------
