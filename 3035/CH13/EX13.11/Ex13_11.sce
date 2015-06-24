

// Variable Declaration
kv_G1 = 13.2        //Voltage rating of G1(kV)
MVA_G1 = 40.0       //MVA rating of G1
x1_G1 = 0.2         //Positive sequence reactance of G1(p.u)
x2_G1 = 0.2         //Negative sequence reactance of G1(p.u)
x0_G1 = 0.08        //Zero sequence reactance of G1(p.u)
MVA_T1 = 40.0       //MVA rating of T1
x_T1 = 0.05         //Reactance(p.u)
kv_lv_T1 = 13.2     //L.V side rating of T1(kV)
kv_hv_T1 = 132.0    //H.V side rating of T1(kV)
kv_L = 132.0        //Voltage rating of line(kV)
x1_L = 40.0         //Positive sequence resistance of line(ohm)
x2_L = 40.0         //Negative sequence resistance of line(ohm)
x0_L = 100.0        //Zero sequence resistance of line(ohm)
MVA_T2 = 40.0       //MVA rating of T1
x_T2 = 1.0          //Resistance through which neutral is earthed(ohm)
xp_T2 = 0.05        //Primary reactance of T2(p.u)
xs_T2 = 0.045       //Secondary reactance of T2(p.u)
xt_T2 = 0.06        //Tertiary reactance of T2(p.u)

// Calculation Section
MVA_base = 40.0                                                                 //Base MVA
kv_base_G1 = 13.2                                                               //Voltage base on generator side(kV)
kv_base_L = 132.0                                                               //Voltage base on Line side(kV)
kv_base_T2t = 3.3                                                               //Voltage base on tertiary side of T2(kV)
kv_base_T2s = 66                                                                //Voltage base on secondary side of T2(kV)
R_ng = 2*MVA_base/kv_base_G1**2                                                 //Neutral resistance of generator(p.u)
x1_L_new = x1_L*MVA_base/kv_base_L**2                                           //New Line reactance(p.u)
x2_L_new = x2_L*MVA_base/kv_base_L**2                                           //New Line reactance(p.u)
x0_L_new = x0_L*MVA_base/kv_base_L**2                                           //New Line reactance(p.u)
R_nT = x_T2*MVA_base/kv_base_T2s**2                                             //Neutral resistance of T2(p.u)
V_f = 1.0                                                                       //Pre-fault voltage at fault point(p.u)
Z1 = complex(0,x1_G1+x_T1+(x1_L_new/2)+xp_T2+xs_T2)                             //Thevenin impedance of positive sequence(p.u)
Z2 = complex(0,x2_G1+x_T1+(x2_L_new/2)+xp_T2+xs_T2)                             //Thevenin impedance of negative sequence(p.u)
Z0 = complex(0.0024,0.0593)                                                     //Thevenin impedance of zero sequence(p.u).Refer diagram
I_f = 3*V_f/(Z1+Z2+Z0)                                                          //Fault current(p.u)
I_f1 = abs(I_f)*MVA_base*1000/(3**0.5*kv_base_T2s)                              //Fault current(A)
MVA_fault = abs(I_f)*MVA_base                                                   //Fault MVA

// Result Section
printf('Fault current , I_f = %.2f A' ,I_f1)
printf('Fault MVA for L-G fault = %.2f MVA' ,MVA_fault)
