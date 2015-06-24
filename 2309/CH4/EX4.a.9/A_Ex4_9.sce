// Chapter 4 Additional Example 9 
//==============================================================================
clc;
clear;

// input data
l       = 10^-10;            // side of one dimensional box 
h       = 6.625*10^-34       // plancks constant in Jsec
m       = 9.11*10^-31        // mass of electron in Kg
n1      = 1;                 // for 1st eigen value
n2      = 2;                 // for 2nd eigen value
n3      = 3;                 // for 3rd eigen value
n4      = 4;                 // for 4th eigen value
e       = 1.6*10^-19         // charge of electron in columbs

// Calculations
E1      = (h^2 * n1^2)/(8*m*l^2 *e ) // first Eigen value
E2      = (h^2 * n2^2)/(8*m*l^2 *e ) // second Eigen value
E3      = (h^2 * n3^2)/(8*m*l^2 *e ) // third Eigen value
E4      = (h^2 * n4^2)/(8*m*l^2 *e ) // fourth Eigen value
 
// Output
mprintf('1st Eigen value  = %3.1f eV\n 2nd Eigen value  = %3.1f eV\n 3rd Eigen value  = %3.1f eV\n 4th Eigen value  = %3.1f eV\n',E1,E2,E3,E4);
//==============================================================================


