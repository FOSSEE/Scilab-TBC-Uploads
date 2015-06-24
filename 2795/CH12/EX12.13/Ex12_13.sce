// Scilab Code Ex12.13: Page-453 (2014)
clc; clear;
u = 931.5;    // Energy equivalent of 1 u, MeV
M_U230 = 230.033927;    // Atomic mass of U-230, u
m_n = 1.008665;    // Mass of a neutron, u
M_H = 1.007825;    // Mass of hydrogen, u
M_U229 = 229.033496;    // Gram atomic mass of U-230
Q = (M_U230 - M_U229 - m_n)*u;    // Q-value of the reaction emitting a neutron
if (Q < 0) then
    printf("\nThe neutron decay in this reaction is not possible.");
else
    printf("\nThe neutron decay in this reaction is possible.");    
end
Q = (M_U230 - M_U229 - M_H)*u;    // Q-value of the reaction emitting a proton
if (Q < 0) then
    printf("\nThe proton decay in this reaction is not possible.");
else
    printf("\nThe proton decay in this reaction is possible.");    
end

// Result
// The neutron decay in this reaction is not possible.
// The proton decay in this reaction is not possible. 