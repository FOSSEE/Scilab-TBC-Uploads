
// Variable Declaration
V_i = 100.0         //Incident voltage(kV)
Z_1 = 400.0         //Surge impedance(ohm)
Z_21 = 350.0        //Surge impedance of line connected at T(ohm)
Z_22 = 50.0         //Surge impedance of cable connected at T(ohm)


// Calculation Section
Z_2 = Z_21*Z_22/(Z_21+Z_22)     //Surge impedance(ohm)
V_t = 2*Z_2*V_i/(Z_1+Z_2)       //Refracted voltage(kV)
V_r = (Z_2-Z_1)*V_i/(Z_1+Z_2)   //Reflected voltage(kV)
I_t1 = V_t/Z_21*1000            //Refracted current in Z_21(A)
I_t2 = V_t/Z_22*1000            //Refracted current in Z_22(A)
I_r = -(V_r/Z_1)*1000           //Reflected current in Z_1(A)


// Result Section
printf('Refracted voltage , V_t = %.2f kV' ,V_t)
printf('Refracted current in overhead line , I_t1 = %.2f A',I_t1)
printf('Refracted current in underground cable , I_t2 = %.2f A' ,I_t2)
