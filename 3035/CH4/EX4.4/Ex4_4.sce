
// Variable Declaration
r = 1.0       //Radius of each conductor(cm)
d_11 = 30     //Distance b/w conductor 1 & 1'(cm)
d_22 = 30     //Distance b/w conductor 2 & 2'(cm)
d_12 = 130    //Distance b/w conductor 1 & 2(cm)
d_122 = 160   //Distance b/w conductor 1 & 2'(cm)
d_112 = 100   //Distance b/w conductor 1' & 2(cm)
d_1122 = 130  //Distance b/w conductor 1' & 2'(cm)

// Calculation Section
r_1 = 0.7788 * r                               //Radius of hypothetical conductor(cm)
D_s = (d_11 * r_1 * d_22 * r_1)**(1.0/4)       //Geometric mean radius(cm)
D_m = (d_12 * d_122 * d_112 * d_1122)**(1.0/4) //Geometric mean separation(cm)
L = 4 * 10**(-7) * log(D_m/D_s) * 10**6   //Loop inductance(mH/km)

R = 2**0.5                                     //Radius of single conductor(cm)
d = 130.0                                      //Conductor position(cm)
L_1 = 4*10**(-7)*log(d/(0.7788*R))*10**6  //Loop inductance(mH/km)
L_diff = (L_1 - L)/L*100                       //Change in inductance(%)
r_diff = D_s - R                               //Effective radius difference


// Result Section
printf('Loop inductance , L = %.3f mH/km' ,L)
printf('Loop inductance having two conductors only , L = %.3f mH/km'  ,L_1)
printf('There is an Increase of %.f percent in inductance value ' ,L_diff)
printf('Effective radius of bundled conductors is about %.1f times that of unbundled system reducing field stress almost by that ratio' ,r_diff)
