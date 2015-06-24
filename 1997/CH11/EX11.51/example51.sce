//Chapter-11 example 51
//=============================================================================
clc;
clear;
//Given data
F       = 5;            // Noise Figure in dB
BW      = 1.2*10^6;     // Bandwidth in Hz
T       = 290;          // Ambient temp in kelvin
K       = 1.38*10^-23;  // boltzmann constant

//Calculations
F1      = 10^(5/10) ;    // antilog calc of noise figure
Prmin   = K*(F1-1)*T*BW; // min. rx. signal

//Output
mprintf('Minimum Receivable signal = %3.4e W\n ',Prmin);
mprintf('Note:In textbook All values are correctly substituted in calculating Prmin.\n but incorrect final answer is printed in the book')

//==============================================================================
