// Scilab code Exa2.2.4 To determine the most stable isotope of A = 75 : Page 68 (2011)
a_v = 15.5; // Volume energy coefficient, MeV
a_s = 16.8; // Surface energy coefficient MeV
a_c = 0.7; // Coulomb energy coefficient, MeV
a_a = 23.0; // Asymmetric energy coefficient, MeV
a_p = 34.0; // Pairing energy coefficient, MeV
A = 75; //  Given atomic mass 
z = poly(0, 'z'); // z declares  a polynomial
B = -a_c*z*(z-1)/A^(1/3)-a_a*(A-2*z)^2/A ; // Binding energy as per liquid drop model
dB = derivat(B); // Differentiate B w.r.t. z
z = roots(dB); // Isotope of A = 75
z_i = round(z); // Most stable isotope of A = 75
printf("\nMost stable isotope of A = 75 corresponds to Z = %d ", z_i)

//   Result
//  Most stable isotope of A = 75 corresponds to Z = 33
