
// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat transfer, Seventh Edition, Frank Kreith, Raj M Manglik and Mark S Bohn, Chapter 9, Example 4")
//Hemispherical emissivity of an aluminum paint at wavelengths below 3 microns
epsilon_lamda_1=0.4;
//Hemispherical emissivity of an aluminum paint at longer wavelengths
epsilon_lamda_2=0.8;
//At room temperature 27 degree celcius, product of lamda and T in micron-K
lamda_T_1=3*(27+273);
//At elevated temperature 527 degree celcius, product of lamda and T  in micron-K
lamda_T_2=3*(527+273);
//From Table 9.1
// For lamda_T_1, ratio of blackbody emission between zero and lamda_l to the total emission
r_1=0.00016;
// For lamda_T_2, ratio of blackbody emission between zero and lamda_u to the total emission
r_2=0.14;
disp("Thus, the emissivity at 27°C")
//Emissivity
epsilon=0.8
disp("emissivity at 527°C")
//Emissivity at higher temp.
epsilon=(r_2*epsilon_lamda_1)+(epsilon_lamda_2*0.86)
disp("The reason for the difference in the total emissivity is that at the higher temperature,the percentage of the total emissive power in the low-emittance region of the paint is appreciable, while at the lower temperature practically all the radiation is emittedat wavelengths above 3 microns")
