// Variable Declaration
V_1 = complex(1.04,0)           //Voltage at bus 1(p.u)
S_D1 = complex(0.55,0.15)       //Power at bus 1(p.u)
S_D2 = complex(1.0,0.3)         //Power at bus 2(p.u)
Y_11 = complex(0.988,-9.734)    //Admittance at bus 1(p.u)
Y_22 = Y_11                     //Admittance at bus 2(p.u)
Y_12 = complex(-0.988,9.9)      //Admittance b/w bus 1 & 2(p.u)
Y_21 = Y_12                     //Admittance b/w bus 2 & 1(p.u)

// Calculation Section
V_2_0 = complex(1,0)                                            //Initial value of V_2 
S_2 = complex(-1,0.3)                                           //P_2+j*Q_2
V_2_1 =  (1/Y_22)*(S_2/conj(V_2_0)-Y_21*V_1)
V_2_2 =  (1/Y_22)*(S_2/conj(V_2_1)-Y_21*V_1)
V_2_3 =  (1/Y_22)*(S_2/conj(V_2_2)-Y_21*V_1)
V_2_4 =  (1/Y_22)*(S_2/conj(V_2_3)-Y_21*V_1)
V_2_5 =  (1/Y_22)*(S_2/conj(V_2_4)-Y_21*V_1)
V_2 = V_2_5                                                     //Voltage 2(p.u)
S_1_con = conj(V_1)*Y_11*V_1 + conj(V_1)*Y_12*V_2   //Conjugate of slack bus net power
S_1 = conj(S_1_con)
S_G1 = S_1 + S_D1                                               //Generated power at bus 1(p.u)
P_L = real(S_G1) - (real(S_D1) + real(S_D2))                       //Real power loss(p.u)
Q_L = imag(S_G1) - (imag(S_D1) + imag(S_D2))                       //Reactive power loss(p.u)

// Result Section
printf('Voltage at bus 2 , V_2 = %.4f∠%.2f° p.u' ,abs(V_2),phasemag(V_2))
printf('Generated power at bus 1 , S_G1 = (%.2f + j%.3f) p.u' ,real(S_G1),imag(S_G1))
printf('Real power loss in the system = %.2f p.u' ,P_L)
printf('Reactive power loss in the system = %.3f p.u' ,Q_L)
