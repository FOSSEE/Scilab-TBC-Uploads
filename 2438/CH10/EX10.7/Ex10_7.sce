//============================================================================================================
// chapter 10 example 7
clc
clear

// Variable declaration
 n1      = 1.33;         //refractive index of water
 n2      = 1;            // refractive index of air

// Calculations
 theta_c = asin((n2/n1))
 theta_c_deg = theta_c*(180/%pi);        // radian to degree conversion

// Result
mprintf('For angles above %3.2f degrees , there will be total internal reflection in water',theta_c_deg );

//================================================================================================================
