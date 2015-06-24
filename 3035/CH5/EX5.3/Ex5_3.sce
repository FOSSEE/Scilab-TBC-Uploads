
// Variable Declaration
w = 0.63         //Weight of conductor(kg/m)
T_0 = 1350.0     //Maximum allowable load(kg)
h_1 = 20.0       //Height of first tower(m)
h_2 = 15.0       //Height of second tower(m)
L = 240.0        //Span(m)

// Calculation Section
h = h_1 - h_2              //Difference in levels of towers(m)
L_1 = (L/2)+(T_0*h/(w*L))  //Horizontal distance from higher support(m)
L_2 = (L/2)-(T_0*h/(w*L))  //Horizontal distance from lower support(m)
S_1 = w*L_1**2/(2*T_0)     //Sag from upper support(m)
S_2 = w*L_2**2/(2*T_0)     //Sag from lower support(m)
clearance = (h_1 - S_1)    //Minimum clearance(m)

// Result Section
printf('Minimum clearance between a line conductor & water surface = %.3f m' ,clearance)
printf('Sag from upper support = %.3f m' ,S_1)
