
// Variable Declaration
kv = 11.0       //Voltage rating(kV)
MVA = 5.0       //MVA rating
R = 10.0        //Resistance(ohm)
per_a = 0.15    //Armature winding reactance
per_trip = 0.3  //Relay trip for out-of-balance

// Calculation Section
x_p = per_a*kv**2/MVA                           //Winding Reactance(ohm)
V = kv/3**0.5*1000                              //Phase voltage(V)
I = per_trip*MVA*1000/(3**0.5*kv)               //Out of balance current(A)
p = (((R*I)**2/(V**2-(x_p*I)**2))**0.5)*100     //Percentage of winding remains unsupported

// Result Section
printf('Percentage of winding that remains unprotected , p = %.1f percentage' ,p)
