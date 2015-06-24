// Scilab code Exa6.10.2 : To calculate the radius of proton orbit in synchrotron of given energy Page 275(2011)
c= 3e+08; // Speed of light in vacuum, m/s
q = 1.602e-019; // Charge on proton, coulomb
amu = 931;    // Energy equivalent of 1 amu, MeV
m = 938;  //  Rest mass of a proton, MeV
KE = 12e+03;    // Kinetic energy of proton, MeV
B = 1.9; // Magnetic field, T
E = m + KE;    // Total energy of proton, MeV
// As E = m*amu, solving for m, the mass of proton
m = E/amu*1.672e-027;    // Proton mass in motion, kg 
v = 0.9973*c; // Velocity of the proton, m/s
r = m*v/(B*q); // Radius of the proton, m  
printf("\nRadius of the proton orbit :  %4.2f m", r)
// Result
//         Radius of the proton orbit:  22.84 m