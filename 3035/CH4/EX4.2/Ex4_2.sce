// Variable Declaration
r = 0.4    //Radius of conductor(cm)
h = 1000   //Height of line(cm)

// Calculation Section
d = 2*h                                              //Spacing between conductors(cm)
L = 2 * 10**(-4) * log(2*h/(0.7788*r)) * 1000   //Inductance of conductor(mH/km)

// Result Section
printf('Inductance of the conductor = %.3f mH/km' ,L)
