// Given:-
// Entering:-
p1=0.1                                        // pressure in bar
x1= 0.95                                      // Quality
p2= 0.1                                       // pressure in bar
t2= 45.0                                        // temperature in deg celcius
t3=20.0                                         // temperature of cooling entry in deg cel
t4=35.0                                         // temperature of cooling exit

// From table A-3
hf= 191.53                                    // Enthalpy in KJ/kg
hg= 2584.7                                    // Enthalpy in KJ/kg
h2=188.45                                     // Assumption at states 2,3 and 4, h is approx equal to hf(T), in kJ/kg
deltah4_3= 62.7                               // Assumption 4, in kJ/kg


// Calculations:-
h1= hf + x1*(hg-hf)
ratio= (h1-h2)/(deltah4_3)
QRate= (h2-h1)                                // Part B

// Results:-
printf('The rate of the mass flow rate of the cooling water to the mass flow rate of  the condenstaing stream is (m3dot/m1dot) %.2f ',ratio)
printf('The rate of energy transfer from the condensing steam to the cooling water of the steam passing  through the condenser is %.2f kJ/kg.',QRate)
