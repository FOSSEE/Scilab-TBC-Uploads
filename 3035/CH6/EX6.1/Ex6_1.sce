// Variable Declaration
C_m = 0.28      //Capacitance b/w ant 2 cores(micro-F/km)
f = 50.0        //Frequency(Hz)
V_L = 11.0      //Line voltage(kV)

// Calculation Section
C = 2*C_m                           //Capacitance b/w any conductor & shield(micro-F/km)
w = 2*%pi*f                     //Angular frequency
I_c = V_L*10**3*w*C*10**-6/3**0.5   //Charging current/phase/km(A)
Total = 3**0.5*I_c*V_L              //Total charging kVAR/km

// Result Section
printf('Charging current/phase/km , I_c = %.3f A' ,I_c)
printf('Total charging kVAR/km = %.2f ' ,Total)
