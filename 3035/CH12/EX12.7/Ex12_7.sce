
// Variable Declaration
V_i = 2000.0        //Incident voltage(kV)
Z = 300.0           //Surge impedance(ohm)
V_p = 1200.0        //Arrester protection level(kV)

// Calculation Section
I_surge = V_i/Z         //Surge current(kA)
V_oc = 2*V_i            //Open-circuit voltage(kV)
I_A = (V_oc-V_p)/Z      //Current through the arrestor(kA)
I_r = I_A - I_surge     //Reflected current in line(kA)
V_r = -I_r*Z            //Reflected voltage of line(kV)
V_t = V_p               //Refracted voltage into arrestor(kV)
V_r_coeff = V_r/V_i     //Reflected coefficient of voltage
V_t_coeff = V_t/V_i     //Refracted coefficient of voltage
R_a = V_p/I_A           //Arrestor resistance(ohm)


// Result Section
printf('Case(a) :')
printf('Current flowing in line before the surge voltage reaches the arrestor terminal = %.2f kA' ,I_surge)
printf('\nCase(b) :')
printf('Current through the arrestor , I_A = %.2f kA' ,I_A)
printf('\nCase(c) :')
printf('Refraction coefficient of voltage at arrestor terminals = %.1f ' ,V_t_coeff)
printf('Reflection coefficient of voltage at arrestor terminals = %.1f ' ,V_r_coeff)
printf('\nCase(d) :')
printf('Value of arrestor resistance = %.1f ohm' ,R_a)
