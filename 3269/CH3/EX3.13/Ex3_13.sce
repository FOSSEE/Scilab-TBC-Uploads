// Example 3.13
clear all;
clc;

// Using the data given in Table 3.4 and Table II.2 for uranium
v_235 = 2.418;            // Average number of neutrons released per fission
y_235 = 0.72;             // Isotropic abundance of Uranium-235 on the earth
sigmaf_235 = 582.2;       // Fission cross section of Uranium-235
sigmaa_235 = 680.8;       // Absorption cross section of Uranium-235
N_235 = y_235;
y_238 = 99.26;            // Isotropic abundance of Uranium-238 on the earth
sigmaa_238 = 2.7;         // Absorption cross section of Uranium-238
// Calculation
n = (v_235*y_235*sigmaf_235)/((y_235*sigmaa_235)+(y_238*sigmaa_238));
// Result
printf('\n Eta for natural uranium = %3.2f \n',n);
