
// Variable Declaration
R = 0.1      //Resistance/phase/km(ohm)
D_m = 800.0  //Spacing b/w conductors(cm)
d = 1.5      //Diameter of each conductor(cm)
l = 300.0    //Length of transmission line(km)
f = 50.0     //Frequency(Hz)

// Calculation Section
L = 2*10**(-4)*log(D_m*2/d)                //Inductance/phase/km(H)
C = 2*%pi*8.854*10**(-9)/log(D_m*2/d)  //Capacitance/phase/km(F)
w = 2 * %pi * f
z = complex(R, w*L)                             //Series impedance per phase per km(ohm/km)
y = complex(0, w*C)                             //Shunt admittance per phase per km(mho/km)
g = (y*z)**(0.5)                                //propagation constant(/km)
gl = g * l
Z_c = (z/y)**(0.5)                              //Surge impedance(ohm)
sinh_gl = sinh(gl)
tanh_gl = tanh(gl/2)
Z_S = Z_c * sinh_gl                             //Series impedance(ohm)
Y_P = (1/Z_c)*tanh(gl/2)                  //Pillar admittance(mho)

// Result Section
printf('Values of equivalent-pi network are :')
printf('Series impedance , Z_S = (%.2f + j%.2f) ohm' ,real(Z_S),imag(Z_S))
printf('Pillar admittance , Y_P = %.2e∠%.2f° mho = j%.2e mho' ,abs(Y_P),phasemag(Y_P),imag(Y_P))
printf('NOTE : Answers are slightly different because of rounding error.')
