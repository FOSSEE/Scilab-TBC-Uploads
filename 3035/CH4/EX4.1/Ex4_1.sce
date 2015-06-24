
// Variable Declaration
l = 10.0       //Length of 1-phase line(km)
d = 100.0      //Spacing b/w conductors(cm)
r = 0.3        //Radius(cm)
u_r_1 = 1.0    //Relative permeability of copper
u_r_2 = 100.0  //Relative permeability of steel

// Calculation Section
r_1 = 0.7788*r                                  //Radius of hypothetical conductor(cm)
L_1 = 4 * 10**(-7) * log(d/r_1)            //Loop inductance(H/m)
L_T1 = L_1 * l * 10**6                          //Total loop inductance(mH)

L_2 = 4 * 10**(-7) * (log(d/r) + (u_r_2/4))//Loop inductance(H/m)
L_T2 = L_2 * l * 10**6                          //Total loop inductance(mH)

// Result Section
printf('(i) Total loop inductance of copper conductor = %.2f mH' ,L_T1)
printf('(ii)Total loop inductance of steel conductor = %.2f mH' ,L_T2)
