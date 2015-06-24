
// Variable Declaration
r = 0.015    //Radius of each conductor(m)
D_ab = 15    //Horizontal distance b/w conductor a & b(m)
D_bc = 15    //Horizontal distance b/w conductor b & c(m)
D_ac = 30    //Horizontal distance b/w conductor a & c(m)

// Calculation Section
D_m = (D_ab * D_bc * D_ac)**(1.0/3)                       //Geometric mean separation(m)
D_s = 2**(1.0/2) * r                                      //Geometric mean radius(m)
C_n = 2 * %pi * 8.854 * 10**(-9) /(log(D_m/D_s)) //Capacitance/phase/km(F/km)

// Result Section
printf('Capacitance per phase , C_n = %.3e F/km' ,C_n)
