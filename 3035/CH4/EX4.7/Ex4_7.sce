
// Variable Declaration
r = 0.6       //Radius of each conductor(cm)
d = 150       //Separation distance(cm)
L = 40*10**3  //Length of overhead line(m)
f = 50        //Frequency(Hertz)
v = 50*10**3  //System voltage(V)

// Calculation Section
C_ab = (%pi * 8.854 * 10**(-12))/(log(d/r)) * L   //Capacitance b/w conductors(F)
I = complex(0,v * 2 * %pi * f * C_ab)                  //Charging current leads voltage by 90°(A)

// Result Section
printf('Capacitance between two conductors , C_ab = %.3e F' ,C_ab)
printf('Charging current , I = j%.3f A' ,imag(I))
