// Scilab code Exa5.5.2: To calculate the thickness of Pb: P.no. 226 (2011)
u = 0.75; // Absorption coefficient , cm^-1
I_r = 1/100; // Intensity ratios, 
x = log(1/I_r)*u; // Thckness of Pb, cm
printf("\n Thickness of Pb : %5.3f cm",x )
// Result
//      Thickness of Pb : 6.140 m 
