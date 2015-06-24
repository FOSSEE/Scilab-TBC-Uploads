// Scilab code Exa2.2.5 To determine the most stable isotopes for A = 27, A = 118, A = 238 : Page 69 (2011)
a_v = 15.5; // Volume energy, MeV 
a_s = 16.8; // Surface energy, MeV 
a_c = 0.7; // Coulomb energy, MeV
a_a = 23.0; // Asymmetric energy, MeV
a_p = 34.0; // Pairing energy, MeV
z = poly(0, 'z')
// For A = 27;  
B_27 = -a_c*z*(z-1)/27^(1/3)-a_a*(27-2*z)^2/27 ; // Binding energy as per liquid drop model
dB_27 = derivat(B_27) // Differentiate B w.r.t. z
z_27 = roots(dB_27)   // Isotope of A = 27
z_i_27 = round(z_27)  // Most stable isotope of A = 27
// For A = 118 
B_118 = -a_c*z*(z-1)/118^(1/3)-a_a*(118-2*z)^2/118 ; // Binding energy as per liquid drop model
dB_118 = derivat(B_118)  // Differentiate B w.r.t. z
z_118 = roots(dB_118)    // Isotope of A = 118
z_i_118 = round(z_118)   // Most stable isotope of A = 118
// For A = 238
B_238 = -a_c*z*(z-1)/238^(1/3)-a_a*(238-2*z)^2/238 ; // Binding energy as per liquid drop model
dB_238 = derivat(B_238); // Differentiate B w.r.t. z
z_238 = roots(dB_238); // Isotope of A = 238
z_i_238 = round(z_238); // Most stable isotope of A = 238
printf("\nMost stable isotopes for A = 27, A = 118, A = 238 corresponds to z = %d, %d and %d respectively", z_i_27, z_i_118, z_i_238);

// Result
// Most stable isotopes for A = 27, A = 118, A = 238 corresponds to z = 13, 50 and 92 respectively

