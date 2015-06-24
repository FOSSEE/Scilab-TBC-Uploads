// Chapter 6 example 1
//------------------------------------------------------------------------------
clc;
clear;
// Given data
gs      = 0.0025;       // output conductance in mho
gl      = 0.0025;       // load conductance
r       = -250;         // negative resistance of microwave device

// calculations

//  P1  = Vl^2 *gl          // power that is transferred to load
//  P   = Vl^2 *gs          // source is matched to load
//  P   = [Is/(gl+gs)]^2 *gs
//      = ((Is^2)/(4*gs^2))*gs 
//      = (Is^2)/(4*gl)
//  P2  = Vl^2 *gl          // Load power
//      = [Is/(gs+gl-g)]^2 *gl
//      = (Is^2 *gl)/(2gl - g)^2
// P2/P1 = ((Is^2 *gl)/(2gl - g)^2)*(4*gl)/(Is^2)
//       = (4*gl^2)/(2gl - g)^2;
//       = (4*gl^2)/(4gl^2 + g(g-4gl))
// For P2/P1 > 1 , 4gl > g so that denominator is less than numerator 
g       = 1/r
// let k = P2/P1
k       = (4*gl*gl)/((2*gs)+ g)^2

// output
    mprintf('Power gain = %d',k);

