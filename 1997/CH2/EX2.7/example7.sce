//Chapter-2 example 2.7
//=============================================================================
clc;
clear;
Rmax=500;//maximum range in kms
V0=3*10^8;//velocity in m/s;
//calculations
PRF=(V0/(2*Rmax*10^3));//pulse repetitive frequency in Hz
//output
mprintf('pulse repetitive frequency is %g Hz',PRF);
