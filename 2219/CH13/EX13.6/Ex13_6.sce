//Chapter 13 example 6
//------------------------------------------------------------------------------
clc;
clear;
// Given data
UF_sh   = 0.01;     // unavail. factor for single hop
IF_SD   = 100;      // improvement factor due to space diversity

// Calculations
UF_4hl  = 4* UF_sh/100;     // unavail. factor for 4 hop link and conv from %
UF      = UF_sh/(100*IF_SD);// unavail. factor for single hop link if it employs space diversity

// Output
mprintf('unavail. factor for 4 hop link = %3.4f\n unavail. factor for single hop link if it employs space diversity = %3.0e',UF_4hl,UF);
//------------------------------------------------------------------------------
