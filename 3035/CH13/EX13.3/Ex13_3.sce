

// Variable Declaration
x = 1.2                 //Reactance of interconnector(ohm per phase)
kv = 33.0               //Voltage of bus-bars(kV)
SC_MVA1 = 3000.0        //Short-circuit MVA at bus-bar of first station(MVA)
SC_MVA2 = 2000.0        //Short-circuit MVA at bus-bar of second station(MVA)


// Calculation Section
MVA_base = 3000.0                   //Base MVA
kv_base = 33.0                      //Base kV
x_c = x*(MVA_base/kv_base**2)       //Cable reactance(p.u)
x1 = MVA_base/SC_MVA1               //Reactance b/w e.m.f source & bus-bars for station 1(p.u)
x2 = MVA_base/SC_MVA2               //Reactance b/w e.m.f source & bus-bars for station 2(p.u)
V_f = 1.0                           //Fault voltage by applying Thevenin's Theorem at FF(p.u)
X_eq1 = x1*(x_c+x2)/(x1+x_c+x2)     //Thevenin reactance for short-circuit at bus bars at station 1(p.u)
SC_MVA1_poss = V_f*MVA_base/X_eq1   //Possible short-circuit at station 1(MVA)
X_eq2 = x2*(x_c+x1)/(x1+x_c+x2)     //Thevenin reactance for short-circuit at bus bars at station 2(p.u)
SC_MVA2_poss = V_f*MVA_base/X_eq2   //Possible short-circuit at station 2(MVA)


// Result Section
printf('Possible short-circuit MVA at station 1 = %.2f MVA' ,SC_MVA1_poss)
printf('Possible short-circuit MVA at station 2 = %.2f MVA' ,SC_MVA2_poss)
