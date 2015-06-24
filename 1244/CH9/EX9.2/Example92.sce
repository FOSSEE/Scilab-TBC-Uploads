
// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat transfer, Seventh Edition, Frank Kreith, Raj M Manglik and Mark S Bohn, Chapter 9, Example 2")
//Temperature at which sun is radiating as a blackbody in K
T=5800;

//Lower limit of wavelength for which glass is transparent in microns
lamda_l=0.35;
//lower limit of product of wavelength and temperature in micron-K
lamda_l_T=lamda_l*T;
//Lower limit of wavelength for which glass is transparent in microns
lamda_u=2.7;
//lower limit of product of wavelength and temperature in micron-K
lamda_u_T=lamda_u*T;

// For lamda_T= 2030, ratio of blackbody emission between zero and lamda_l to the total emission in terms of percentage
r_l=6.7;
// For lamda_T= 15660, ratio of blackbody emission between zero and lamda_u to the total emission in terms of percentage
r_u=97;

//Total radiant energy incident upon the glass from the sun in the wavelength range between lamda_l and lamda_u
total_rad=r_u-r_l;
disp("Percentage of solar radiation transmitted through the glass in terms of percentage")
rad_trans=total_rad*0.92    //Since it is given that silica glass transmits 92% of the incident radiation
