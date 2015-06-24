// chapter 2 example 8
//------------------------------------------------------------------------------
clc;
clear;

//        | ax      ay                az            |
// v*E =  | ∂/∂x   ∂/∂y             ∂/∂z           | 
//        | 0       0  80*cos(6.277*10^8t - 2.092y) |
// Electric flux density D =  εoE
//      = 8.85*10^-12 *80cos(6.277*10^8t - 2.092y)ax
//      = 708*10^-12 *cos(6.277*10^8 t -2.092y)ax
// Displacement current density = ∂D/∂t
// ∂D/∂t = -708*10^-12*6.277*10^8*sin(6.277*10^8t - 2.092y)ax
//       = -0.444sin(6.277*10^8t - 2.092y)ax
mprintf('Amplitude of displacement current density = 0.0444 A/m^2');
//------------------------------------------------------------------------------
