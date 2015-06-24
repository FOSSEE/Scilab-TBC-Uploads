
// Variable Declaration
x0 = 0.05       //Zero sequence reactance(p.u)
x2 = 0.13       //Negative sequence reactance(p.u)
r = 1.0         //Resistance through which generator neutral is earthed(ohm)
MVA_sc = 170.0  //Short circuit MVA

// Calculation Section
MVA_base = 25.0                         //Base MVA
kv_base = 13.2                          //Line-to-line Base voltage(kV)
I_base = MVA_base*1000/(3**0.5*kv_base) //Base current(A)
kv_base1 = 11.0                         //Base kV
Z_n = r*MVA_base/kv_base1**2            //Neutral impedance(p.u)
V_f = 1.0                               //Pre-fault terminal voltage(p.u)
x1 = MVA_base/MVA_sc                    //Positive sequence reactance(p.u)
I_a1 = V_f/complex(3*Z_n,(x1+x2+x0))    //Positive sequence current(p.u)
I_a0 = I_a1                             //Zero sequence current(p.u)
I_a2 = I_a1                             //Negative sequence current(p.u)
I_a = 3*I_a1*I_base                     //Fault current(A)
V_n = 3*I_a0*Z_n*I_base                 //Potential of neutral(V)

// Result Section
printf('Fault current for a L-G short-circuit at its terminals , I_a = %.2f∠%.2f° A' ,abs(I_a),phasemag(I_a))
printf('Neutral potential = %.3f∠%.2f° V' ,abs(V_n),phasemag(V_n))
printf('\nNOTE : ERROR : For calculating neutral potential in textbook Z_n = 1 is taken instead of Z_n = 0.206611570248')
