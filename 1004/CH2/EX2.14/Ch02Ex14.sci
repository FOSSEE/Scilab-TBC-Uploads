// Scilab Code Ex2.14 Ratio of masses of a proton and an electron: Pg:54 (2008)
RH = 1.09678e+07;    // Rydberg constant for hydrogen, per metre
RHe = 1.09722e+07;    // Rydberg constant for helium, per metre
MH_m_ratio = (RH - 1/4*RHe)/(RHe - RH);    // Ratio of mass of a proton to that of an electron
printf("\nThe ratio of mass of a proton to that of an electron = %4d", MH_m_ratio);
// Result 
// The ratio of mass of a proton to that of an electron = 1869