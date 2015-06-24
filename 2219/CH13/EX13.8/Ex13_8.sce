//Chapter 13 example 8
//------------------------------------------------------------------------------
clc;
clear;
// Given data
// D2 = 2*D1            // path length is doubled
// F2 = F1+10;          // fade margin is increased by 10dB
// f2 = 1.25f1          // frequency operation increased by 25 %

//(U1/U2)  = (f1* D1^3 * 10^(-F1/10))/ (f1* D1^3 * 10^(-F1/10))
// sub above values
//(U1/U2)  = (f1* D1^3 * 10^(-F1/10)) / (1.25*f1*8*D1^3*10^(-F1/10)*10^-1) = 1
mprintf('Unavailability Factor remains unaltered');
//------------------------------------------------------------------------------
