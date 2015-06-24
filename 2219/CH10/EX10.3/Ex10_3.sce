// Chapter 10 example 3
//------------------------------------------------------------------------------
clc;
clear;
Vr = 150
c  = 3*10^8
df1= 10^6;
// Given data
// fd   = (2*Vr)/lamda  = (2*Vr*f)/c
// for 'Vr' and 'c' as constant(for a given radial velocity,Vr is constant)
// fd   = K.f where 'f' is the operating frequency and K = (2*Vr)/c
// Therefore df = ± 1 Mhz around the center frequency
k = (2*Vr)/c
df_d = df1*k

// Output
mprintf('Doppler shift due to carrier frequency sweep = ±%d Hz',df_d);
//------------------------------------------------------------------------------
