// Scilab code Exa6.5.2 : To calculate the length of the first and last drift tubes which accelerate the protons whose frequency and energies are given. Page 268 (2011)
f = 200e+06;  //  Frequency of applied the voltage, Hz
V_0 = 750e+03;  // Applied potential difference, V
q = 1.6e-019; // Charge of proton, C
m = 1.67e-027; // Mass of proton, Kg
n_1 = 1; // For first tube
L_1 = sqrt(2*n_1*q*V_0/m)/(2*f);   // Length of the first tube, m
n_n = 128; //  For last tube
L_n = 1/(2*f)*sqrt(2*n_n*q*V_0/m); // Length of the last tube,m
printf("\n Length of the first tube = %4.2f m \n Length of the last tube = %4.2f m ", L_1,L_n);
// Result
//    Length of the first tube = 0.03 m 
//    Length of the last tube = 0.34 m 