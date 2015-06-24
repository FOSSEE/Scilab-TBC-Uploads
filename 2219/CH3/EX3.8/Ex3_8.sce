// Chapter 3 example 8
//------------------------------------------------------------------------------
clc;
clear;
// Given data
f       = 100*10^6;             // operating frequency in Hz
v       = 2*10^8 ;              // propagation velocity in m/s
Zo      = 300;                  // charecteristic impedance in ohm
Zin     = 300;                  // input impedance in ohm
l       = 1;                    // length in m
V       = 100;

// Calculations
lamda   = v/f                   // wavelength in m
if lamda/2 ==l then
    Zl  = Zin;
end
k       = (V*Zin)/(Zin+Zl)
//Vin   = k*cos(2*%pi*f*t)
// since the line is lamda/2 long ,the signal undergoes a phase delay of  βl = (2*π)/lamda *(lamda/2) = π
// Output
mprintf('Vin = %dcos(2π*%3.0et)\n Vl = %dcos(2π*%3.0et-π)',k,f,k,f );
//------------------------------------------------------------------------------
