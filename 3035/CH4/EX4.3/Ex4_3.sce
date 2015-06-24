
// Variable Declaration
d_ab = 4    //Distance b/w conductor a & b(m)
d_bc = 9    //Distance b/w conductor b & c(m)
d_ca = 6    //Distance b/w conductor c & a(m)
r = 1.0     //Radius of each conductor(cm)

// Calculation Section
D_m = (d_ab * d_bc * d_ca)**(1.0/3)             //Geometric mean separation(m)
r_1 = 0.7788 * (r/100)                          //Radius of hypothetical conductor(m)
L = 2 * 10**(-7) * log(D_m/r_1) * 10**6    //Line inductance(mH/phase/km)

// Result Section
printf('Line inductance , L = %.2f mH/phase/km' ,L)
