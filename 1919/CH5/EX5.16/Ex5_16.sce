
// Theory and Problems of Thermodynamics
// Chapter 5
//Second Law of Thermodynamcis
// Example 16

clear ;clc;

//Given data
N = 1          //number of moles of air to be seperated 
P = 0.1*1e6    //pressure of of air before seperation in Pa
T = 300        //temperature of air before seperation in K
R = 8.314      //gas constant

// Calculations for determining the minimum work required
// From first and second law of thermodynamics
// dU = T dS - P dV
// initial and final temperatures are identical => dU = 0 
S_mix = -R*(0.21*log(0.21) + 0.79*log(0.79))    // entorphy for mixing
S_sep = - S_mix                      // entrophy change for seperation
W = T * S_sep                        // minimum work to be done

// Output Results
mprintf('Minimum work to be done for seperation = %6.1f kJ', -W)

