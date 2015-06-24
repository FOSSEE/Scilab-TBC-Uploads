
// Variable Declaration
R = 0.16             //Resistance(ohm)
L = 1.26*10**(-3)    //Inductance(H)
C = 8.77*10**(-9)    //Capacitance(F)
l = 200.0            //Length of line(km)
P = 50.0             //Power(MVA)
pf = 0.8             //Lagging power factor
V_r = 132000.0       //Receiving end voltage(V)
f = 50.0             //Frequency(Hz)

// Calculation Section
w = 2 * %pi * f
z = complex(R, w*L)        //Series impedance per phase per km(ohm)
y = complex(0, w*C)        //Shunt admittance per phase per km(mho)

g = (y*z)**(0.5)           //propagation constant(/km)
gl = g * l
Z_c = (z/y)**(0.5)         //Surge impedance(ohm)

cosh_gl = cosh(gl)
sinh_gl = sinh(gl)

A = cosh_gl
B = Z_c * sinh_gl
C = (sinh_gl/Z_c)
D = cosh_gl

fi = acos(pf)                                           //Power factor angle(radians)
V_R = V_r/(3**0.5)                                           //Receiving end voltage(V)
I_R = (P*10**6/((3**0.5)*V_r))*(pf - complex(0,sin(fi)))//Receiving end current(A)
V_S = (A*V_R + B*I_R)                                        //Sending end voltage(V/phase)
V_S_L = V_S * (3**0.5)*10**-3                                //Sending end line voltage(kV)
I_S = C*V_R + D*I_R                                          //Sending end current(A)
pf_S = cos((phasemag(I_S)*%pi/180) - (phasemag(V_S)*%pi/180))         //Sending end power factor
P_S = abs(V_S*I_S)*pf_S*10**-6                               //Sending end power/phase(MW)
P_R = (P/3)*pf                                               //Receiving end power/phase(MW)
P_L = 3*(P_S - P_R)                                          //Total line loss(MW)


// Result Section
printf('Sending end voltage , V_S = %.2f∠%.2f° kV/phase' ,abs(V_S*10**-3),phasemag(V_S))
printf('Sending end line voltage = %.2f kV' ,abs(V_S_L))
printf('Sending end current , I_S = %.2f∠%.2f° A' ,abs(I_S),phasemag(I_S))
printf('Sending end power factor = %.2f lagging' ,pf_S)
printf('Total transmission line loss = %.3f MW' ,P_L)
printf('NOTE : Answers are slightly different because of rounding error.')
