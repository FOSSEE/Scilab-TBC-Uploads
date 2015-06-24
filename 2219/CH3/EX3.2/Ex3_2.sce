// Chapter 3 example 2
//------------------------------------------------------------------------------
clc;
clear;
// Given data
Lr      = 18;       // return loss in db
// Calculations
// Lr   = 20*log(1/p);      
p       = 1/10^(Lr/20);     // reflection co-efficient
swr     = (1 + p)/(1 - p);      // standing wave ratio
// Output
mprintf('Reflection co-efficient is %3.3f\n SWR = %3.2f',p,swr);
//------------------------------------------------------------------------------
