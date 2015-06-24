// Scilab code Exa12.6 : : Page-574 (2011)
clc; clear;
Q = 5e+08;        // Rate at which neutrons produce, neutrons per sec
r = 20;            // Distance from the source, centi metre
// For water
lambda_wtr = 0.45;    //  Transport mean free path, centi metre
L_wtr = 2.73;         // Thermal diffusion length, centi metre
phi_wtr = 3*Q/(4*%pi*lambda_wtr*r)*exp(-r/L_wtr);    // Neutron flux for water, neutrons per square centimetre per sec
// For heavy water
lambda_h_wtr = 2.40;        //  Transport mean free path, centi metre
L_h_wtr = 171;            // Thermal diffusion length, centi metre
phi_h_wtr = 3*Q/(4*%pi*lambda_h_wtr*r)*exp(-r/L_h_wtr);    // Neutron flux for heavy water, neutrons per square centimetre per sec
printf("\nThe neutron flux through water = %5.3e neutrons per square cm per sec \nThe neutron flux through heavy water = %5.3e neutrons per square cm per sec", phi_wtr, phi_h_wtr);

// Result
// The neutron flux through water = 8.730e+003 neutrons per square cm per sec 
// The neutron flux through heavy water = 2.212e+006 neutrons per square cm per sec 
 