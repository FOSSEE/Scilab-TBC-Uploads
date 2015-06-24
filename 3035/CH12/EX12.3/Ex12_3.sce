

// Variable Declaration
V_i = 100.0         //Incident voltage(kV)
Z_1 = 400.0         //Surge impedance of overhead line(ohm)
Z_2 = 50.0          //Surge impedance of underground cable(ohm)


// Calculation Section
beta = 2*Z_2/(Z_1+Z_2)      //Refraction coeffeicient of voltage
alpha = (Z_2-Z_1)/(Z_1+Z_2) //Reflection coeffeicient of voltage
V_t = beta*V_i              //Refracted voltage(kV)
V_r = alpha*V_i             //Reflected voltage(kV)
I_t = V_t/Z_2*1000          //Refracted current(A)
I_r = -(V_r/Z_1)*1000       //Reflected current(A)



// Result Section
printf('Reflected voltage , V_r = %.1f kV' ,V_r)
printf('Refracted voltage , V_t = %.1f kV' ,V_t)
printf('Reflected current , I_r = %.1f A' ,I_r)
printf('Refracted current , I_t = %.1f A' ,I_t)
