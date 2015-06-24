// chapter 2 example 1
//------------------------------------------------------------------------------
clc;
clear;
// µr1 = 3;     // relative permeability of region 1
// µr2 = 5;     // relative permeability of region 2
//  H1 = (4ax + 3ay -6az)A/m;   Magnetic field intensity
// Therefore B1 = µoµr1H1
//              = µo(12ax + 9ay -18az)A/m
// since normal component of (B) is continuous across the interface
// Therefore, B2 = µo[12ax + 9(µr2/µr1)ay -18(µr2/µr1)az]
//               = µo[12ax + 15ay - 30az]
//            H2 = [12/5ax + 15/5ay - 30/5az]A/m
//            H2 = (2.4ax + 3ay - 6az)
H2      = sqrt(2.4^2 + 3^2 + 6^2);

// output
mprintf('Magnetic field intensity in region- 2 = %3.2f A/m',H2);
//------------------------------------------------------------------------------
