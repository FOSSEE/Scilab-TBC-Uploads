// Scilab code Ex9.3: Pg 311 (2005)
clc; clear;
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
B = 1.00;   // Magnitude of magnetic field, tesla
n = 2;  // Initial state of the hydrogen atom
mu_B = 9.27e-024;   // Bohr's magneton, J/T
E_Z = mu_B*B/e;     // Zeeman energy, eV
E2 = -13.6/n^2;     // Energy of first excited state, eV
m_l = [-2, -1, 0, 1, 2];  // Orbital magnetic quantum number for l = 2
printf("\nThe energies of the electron (in eV) in n = 2 state are:\n");
for i = 1:1:5
    if m_l(i) < 0 then
        sig = '-';
    else
        sig = '+';
    end
    printf(" (%4.2f %s %4.2e) ", E2, sig, abs(E_Z*m_l(i)));
end

// Result
// The energies of the electron (in eV) in n = 2 state are:
// (-3.40 - 1.16e-04)  (-3.40 - 5.79e-05)  (-3.40 + 0.00e+00)  (-3.40 + 5.79e-05)  (-3.40 + 1.16e-04
