
// Variable Declaration
MVA_base = 20.0     //Base MVA

V_f = 1.0                       //Pre-fault voltage at bus 1(p.u).(Refer textbook diagram for marking.After circuit simplification)
x1 = 0.049                      //Reactance(p.u)
x2 = 0.064                      //Reactance(p.u)
x3 = 0.04                       //Reactance(p.u)

// Calculation Section
x_eq = (x1+x2)*x3/(x1+x2+x3)    //Equivalent reactance(p.u)
MVA_fault = V_f*MVA_base/x_eq   //Fault MVA


// Result Section
printf('SCC of bus 1 = %.f MVA' ,MVA_fault)
printf('\nNOTE : Changes in answer is due to more decimal places')
