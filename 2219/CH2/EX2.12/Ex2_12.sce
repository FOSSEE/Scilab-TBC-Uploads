// chapter 2 example 12
//------------------------------------------------------------------------------
clc;
clear;
// given data
// E = 40π e^j(10^9t + βz)ax
// H = Hm e^j(10^9t + βz)ay
// w/β = 1/sqrt(e*uo) = 3*10^8
w   = 10^9;       // from given expression
b   = w/3*10^8
Em  = 40*%pi      // from given expression
// E/H = 120;       // for free space

Hm  = Em/(120*%pi);
//V * E = -∂B/∂t
//      =|     ax          ay           az|
// V*E  =|   ∂/∂x         ∂/∂y       ∂/∂t|
//      =|40π e^j(10^9t + βz) 0        0  |
// V*E  = jβ40π e^j(10^9t + βz) ay                                  ----- 1
//  -∂B/∂t = uo*∂H/∂t = -j*10^9 *uo*Hm e^j(10^9t + βz)ay            ----- 2
// Comparing 1 and 2 shoes that Hm must be negative Hence Hm = -1/3 A/m
mprintf('Hm = - %3.2f A/m',Hm);
//------------------------------------------------------------------------------
