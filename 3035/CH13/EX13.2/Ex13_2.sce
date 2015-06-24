
// Variable Declaration
MVA_base = 100.0    //Base MVA
x1 = 0.15           //Reactance b/w F & B(p.u) . (Refer textbook diagram for marking)
x2 = 0.1            //Reactance b/w F & B(p.u)
x3 = 0.18           //Reactance b/w B & C(p.u)
x4 = 0.1            //Reactance b/w B & F(p.u)
x5 = 0.05           //Reactance b/w F & C(p.u)
x6 = 0.05           //Reactance b/w F & C(p.u)
x7 = 0.1            //Reactance b/w C & F(p.u)
x8 = 0.12           //Reactance b/w C & F(p.u)


// Calculation Section
V_f = 1.0           //Fault voltage by applying Thevenin's Theorem at FF(p.u)
x1_eq = x1+x2
x2_eq = x7+x8
x3_eq = x5*x6/(x5+x6)
x4_eq = x3*x4/(x3+x4+x3_eq)
x5_eq = x4*x3_eq/(x3+x4+x3_eq)
x6_eq = x3*x3_eq/(x3+x4+x3_eq)
x7_eq = (x1_eq+x4_eq)*(x2_eq+x6_eq)/(x1_eq+x4_eq+x2_eq+x6_eq)
X_eq = x7_eq+x5_eq              //Equivalent reactance
MVA_SC = V_f*MVA_base/X_eq      //Short circuit MVA at A


// Result Section
printf('Rating of the circuit breaker at the location A = %.1f MVA' ,MVA_SC)
printf('\nNOTE : ERROR : Delta to star reactance conversion mistake in textbook')
