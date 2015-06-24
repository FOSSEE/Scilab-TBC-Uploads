
// Variable Declaration
kv_gA = 11.0        //Voltage rating of generator A(kV)
MVA_gA = 40.0       //MVA rating of generator A
x_gA = 0.12         //Reactance of generator A(p.u)
kv_gB = 11.0        //Voltage rating of generator B(kV)
MVA_gB = 20.0       //MVA rating of generator B
x_gB = 0.08         //Reactance of generator B(p.u)
kv_Tlv = 11.0       //Low-voltage winding of transformer(kV)
kv_Thv = 66.0       //High-voltage winding of transformer(kV)
x_T = 0.10          //Reactance of Transformer(p.u)
kv_f = 66.0         //Feeder voltage(kV)
x_f = 30.0          //Reactance of feeder(ohm)


// Calculation Section
MVA_base = 75.0                                     //Base MVA
kv_base_lv = 11.0                                   //Base voltage on LT side(kV)
kv_base_hv = 66.0                                   //Base voltage on HT side(kV)
x_gA_new = x_gA*(MVA_base/MVA_gA)                   //New Reactance of generator A(p.u)
x_gB_new = x_gB*(MVA_base/MVA_gB)                   //New Reactance of generator B(p.u)
x_f_new = x_f*(MVA_base/kv_base_hv**2)              //New reactance of feeder(p.u)

x_eq = x_T+(x_gA_new*x_gB_new/(x_gA_new+x_gB_new))  //Equivalent reactance(p.u)
V_f = kv_Thv/kv_base_hv                             //Fault voltage by applying Thevenin's Theorem at FF(p.u)
I_f = V_f/complex(0,x_eq)                           //Fault current(A)
I_f_ht = I_f*(MVA_base*1000/(3**0.5*kv_base_hv))    //Fault current on HT side(A)
I_f_lt = I_f_ht*kv_base_hv/kv_base_lv               //Fault current on LT side(A)
MVA_fault = V_f*MVA_base/x_eq                       //Fault MVA
I_A = I_f*x_gB_new/(x_gA_new+x_gB_new)              //Current in generator A(p.u)
I_A1 = I_A*MVA_base*1000/(3**0.5*kv_base_lv)        //Current in generator A(A)
I_B = I_f*x_gA_new/(x_gA_new+x_gB_new)              //Current in generator B(p.u)
I_B1 = I_B*MVA_base*1000/(3**0.5*kv_base_lv)        //Current in generator B(A)

x_eq2 = x_f_new+x_T+(x_gA_new*x_gB_new/(x_gA_new+x_gB_new))     //Equivalent reactance(p.u)
I_f2 = V_f/complex(0,x_eq2)                                     //Fault current(p.u)
I_f_ht2 = I_f2*(MVA_base*1000/(3**0.5*kv_base_hv))              //Fault current on HT side(A)
MVA_fault2 = V_f*MVA_base/x_eq2                                 //Fault MVA
I_A_pu = I_f2*x_gB_new/(x_gA_new+x_gB_new)                      //Current in generator A(p.u)
I_A2 = I_A_pu*MVA_base*1000/(3**0.5*kv_base_lv)                 //Current in generator A(A)
I_B_pu = I_f2*x_gA_new/(x_gA_new+x_gB_new)                      //Current in generator B(p.u)
I_B2 = I_B_pu*MVA_base*1000/(3**0.5*kv_base_lv)                 //Current in generator B(A)


// Result Section
printf('Case(a) :')
printf('Fault MVA for symmetric fault at the high voltage terminals of transformer = %.2f MVA' ,MVA_fault)
printf('Fault current shared by generator A , I_A = %.2fj A' ,imag(I_A1))
printf('Fault current shared by generator B , I_B = %.2fj A' ,imag(I_B1))
printf('\nCase(b) :')
printf('Fault MVA for symmetric fault at the load end of the feeder = %.2f MVA' ,MVA_fault2)
printf('Fault current shared by generator A , I_A = %.2fj A' ,imag(I_A2))
printf('Fault current shared by generator B , I_B = %.2fj A' ,imag(I_B2))
