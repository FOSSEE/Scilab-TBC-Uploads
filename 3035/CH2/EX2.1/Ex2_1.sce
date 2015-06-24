
// Variable Declaration
MVA_base = 10.0  //Three-phase base MVA
kV_base = 13.8   //Line-line base kV
P = 7.0          //Power delivered(MW)
PF = 0.8         //Power factor lagging
Z = 5.7          //Impedance(ohm)

// Calculation Section
I_base = (MVA_base) * (10**3)/((3**(0.5)) * kV_base)   //Base current(A)
I_actual = P * (10**3)/((3**(0.5)) * kV_base*PF)       //Actual current delivered by machine(A)
I_pu = I_actual/I_base                                 //p.u current(p.u)
Z_pu = Z * (MVA_base/( (kV_base)**2 ))                 //p.u impedance(p.u)
P_act_pu = P/MVA_base                                  //p.u active power(p.u)
x = acos(PF)
y = sin(x)
P_react = (P * y)/PF                                   //Actual reactive power(MVAR)
P_react_pu = P_react/MVA_base                          //Actual p.u reactive power(p.u)

// Result Section
printf('p.u current = %.3f p.u' ,I_pu)
printf('p.u impedance = %.1f p.u' ,Z_pu)
printf('p.u active power = %.1f p.u' ,P_act_pu)
printf('p.u reactive power = %.3f p.u' ,P_react_pu)
