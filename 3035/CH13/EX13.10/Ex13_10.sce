
// Variable Declaration
x1_G1 = complex(0,0.17)     //Positive sequence reactance of G1(p.u)
x2_G1 = complex(0,0.14)     //Negative sequence reactance of G1(p.u)
x0_G1 = complex(0,0.05)     //Zero sequence reactance of G1(p.u)
x1_G2 = complex(0,0.17)     //Positive sequence reactance of G2(p.u)
x2_G2 = complex(0,0.14)     //Negative sequence reactance of G2(p.u)
x0_G2 = complex(0,0.05)     //Zero sequence reactance of G2(p.u)
x1_T1 = complex(0,0.11)     //Positive sequence reactance of T1(p.u)
x2_T1 = complex(0,0.11)     //Negative sequence reactance of T1(p.u)
x0_T1 = complex(0,0.11)     //Zero sequence reactance of T1(p.u)
x1_T2 = complex(0,0.11)     //Positive sequence reactance of T2(p.u)
x2_T2 = complex(0,0.11)     //Negative sequence reactance of T2(p.u)
x0_T2 = complex(0,0.11)     //Zero sequence reactance of T2(p.u)
x1_L = complex(0,0.22)      //Positive sequence reactance of line(p.u)
x2_L = complex(0,0.22)      //Negative sequence reactance of line(p.u)
x0_L = complex(0,0.60)      //Zero sequence reactance of line(p.u)


// Calculation Section
a = 1.0*exp(%i*120*%pi/180)                                  //Operator
Z_1T = (x1_G1+x1_T1)*(x1_G2+x1_T2+x1_L)/(x1_G1+x1_T1+x1_G2+x1_T2+x1_L)  //Thevenin reactance of positive sequence(p.u)
Z_2T = (x2_G1+x2_T1)*(x2_G2+x2_T2+x2_L)/(x2_G1+x2_T1+x2_G2+x2_T2+x2_L)  //Thevenin reactance of negative sequence(p.u)
Z_0T = (x0_G1+x0_T1)*(x0_T2+x0_L)/(x0_G1+x0_T1+x0_T2+x0_L)              //Thevenin reactance of zero sequence(p.u)
V_f = 1.0                                                               //Pre-fault terminal voltage(p.u)
I_a1 = V_f/(Z_1T+Z_2T+Z_0T)                                             //Positive sequence current(p.u)
I_a2 = I_a1                                                             //Negative sequence current(p.u)
I_a0 = I_a1                                                             //Zero sequence current(p.u)
I_a = 3*I_a1                                                            //Fault current(p.u)

I_a1_G1 = I_a1*(x1_L+x1_T2+x1_G2)/(x1_L+x1_T1+x1_G1+x1_T2+x1_G2)        //Positive sequence current shared by G1(p.u)
I_a2_G1 = I_a2*(x2_L+x2_T2+x2_G2)/(x2_L+x2_T1+x2_G1+x2_T2+x2_G2)        //Negative sequence current shared by G1(p.u)
I_a0_G1 = I_a0*(x0_L+x0_T2)/(x0_L+x0_T1+x0_G1+x0_T2)                    //Zero sequence current shared by G1(p.u)
I_a_G1 = I_a0_G1+I_a1_G1+I_a2_G1                                        //Phase current through G1(p.u)
I_b_G1 = I_a0_G1+a**2*I_a1_G1+a*I_a2_G1                                 //Phase current through G1(p.u)
I_c_G1 = I_a0_G1+a*I_a1_G1+a**2*I_a2_G1                                 //Phase current through G1(p.u)

I_a1_G2 = I_a1*(x1_T1+x1_G1)/(x1_L+x1_T1+x1_G1+x1_T2+x1_G2)*exp(%i*30*%pi/180)   //Positive sequence current shared by G1(p.u)
I_a2_G2 = I_a2*(x2_T1+x2_G1)/(x2_L+x2_T1+x2_G1+x2_T2+x2_G2)*exp(%i*-30*%pi/180)  //Negative sequence current shared by G1(p.u)
I_a0_G2 = 0                                                                                 //Zero sequence current shared by G1(p.u)
I_a_G2 = I_a0_G2+I_a1_G2+I_a2_G2                                                            //Phase current through G2(p.u)
I_b_G2 = I_a0_G2+a**2*I_a1_G2+a*I_a2_G2                                                     //Phase current through G2(p.u)
I_c_G2 = I_a0_G2+a*I_a1_G2+a**2*I_a2_G2                                                     //Phase current through G2(p.u)


// Result Section
printf('Fault current for a L-G fault at bus 1 , I_a = %.3fj p.u' ,imag(I_a))
printf('\nPhase currents contributed by G1 :')
printf('I_a = %.3f∠%.1f° p.u' ,abs(I_a_G1),phasemag(I_a_G1))
printf('I_b = %.3f∠%.1f° p.u' ,abs(I_b_G1),phasemag(I_b_G1))
printf('I_c = %.3f∠%.1f° p.u' ,abs(I_c_G1),phasemag(I_c_G1))
printf('\nPhase currents contributed by G2 :')
printf('I_a = %.3f∠%.1f° p.u' ,abs(I_a_G2),phasemag(I_a_G2))
printf('I_b = %.3f∠%.1f° p.u' ,abs(I_b_G2),phasemag(I_b_G2))
printf('I_c = %.3f∠%.1f° p.u' ,abs(I_c_G2),phasemag(I_c_G2))
printf('\nNOTE : ERROR : Calculation mistakes in Generator G2 part')
