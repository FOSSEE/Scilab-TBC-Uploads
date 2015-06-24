
// Variable Declaration
r = 1.5        //Radius of each conductor(cm)
D_a1a2 = 0.3   //Distance b/w conductor a1 & a2(m)
D_a2a1 = 0.3   //Distance b/w conductor a2 & a1(m)
D_a1b1 = 15.3  //Distance b/w conductor a1 & b1(m)
D_a1b2 = 15.6  //Distance b/w conductor a1 & b2(m)
D_a2b1 = 15.0  //Distance b/w conductor a2 & b1(m)
D_a2b2 = 15.3  //Distance b/w conductor a2 & b2(m)
D_b1c1 = 15.3  //Distance b/w conductor b1 & c1(m)
D_b1c2 = 15.6  //Distance b/w conductor b1 & c2(m)
D_b2c1 = 15.0  //Distance b/w conductor b2 & c1(m)
D_b2c2 = 15.3  //Distance b/w conductor b2 & c2(m)
D_a1c1 = 30.6  //Distance b/w conductor a1 & c1(m)
D_a1c2 = 30.9  //Distance b/w conductor a1 & c2(m)
D_a2c1 = 30.3  //Distance b/w conductor a2 & c1(m)
D_a2c2 = 30.6  //Distance b/w conductor a2 & c2(m)

// Calculation Section
r_1 = 0.7788 * (r/100)                              //Radius of hypothetical conductor(m)
D_s = (D_a1a2 * r_1 * D_a2a1 * r_1)**(1.0/4)        //Geometric mean radius(m)
D_ab = (D_a1b1 * D_a1b2 * D_a2b1 * D_a2b2)**(1.0/4) //Mutual GMD b/w conductor a & b(m)
D_bc = (D_b1c1 * D_b1c2 * D_b2c1 * D_b2c2)**(1.0/4) //Mutual GMD b/w conductor b & c(m)
D_ca = (D_a1c1 * D_a1c2 * D_a2c1 * D_a2c2)**(1.0/4) //Mutual GMD b/w conductor c & a(m)
D_m = (D_ab * D_bc * D_ca)**(1.0/3)                 //Geometric mean separation(m)
L = 2 * 10**(-4) * log(D_m/D_s) * 1000         //Inductance(mH/km)

// Result Section
printf('Inductance/phase/km = %.3f mH/km' ,L)
