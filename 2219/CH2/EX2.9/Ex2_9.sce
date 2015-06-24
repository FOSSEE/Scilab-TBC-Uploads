// chapter 2 example 9
//------------------------------------------------------------------------------
clc;
clear;

// A   = (10^-3 y cos(3*10^8 t)cosz)az
// V   = 3*10^5 y sin(3*10^8 t)sinz volts
uo     = 4*%pi*10^-7
ur     = 1; 
er     = 1;

//        | ax      ay                az            |
// v*A =  | ∂/∂x   ∂/∂y             ∂/∂z           | 
//        | 0       0    (10^-3 y cos(3*10^8 t)cosz)|
//     = ∂/∂y(10^-3 y cos(3*10^8 t)cosz)ax
//     = 10^-3 ax cos(3*10^8t)cosz
// H   = B/(µoµr)
// H   = (10^-3 ax cos(3*10^8t)cosz)/( 4*%pi*10^-7)
// H   = 796axcos(3*10^8 t)cosz
// Electric intensity can be computed from
// E   = - V V - ∂A/∂t
// Now V V = ∂V/∂x ax + ∂V/∂y ay + ∂V/∂z az
//  = 3*10^5 sin 3*10^8 t sinz + 3*10^5 y sin3*10^8 t cosz
// ∂A/∂t = -10^-3 * 3*10^8 y sin 3*10^8t cosz
// E     = 3*10^5 sin 3*10^8 t sinz + 3*10^5 y sin3*10^8 t cosz + 3*10^5 y sin 3*10^8t cosz
// E     = -3*10^5 sin 3*10^8tsinz
mprintf('magnetic field intensity = 796axcos(3*10^8 t)cosz\n Electric field intensity = -3*10^5 sin 3*10^8tsinz')
