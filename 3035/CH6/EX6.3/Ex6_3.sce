// Variable Declaration
d = 3.0         //Diameter of conductor(cm)
D = 8.5         //Sheath diameter(cm)
e_r1 = 5.0      //Permittivity of inner dielectric
e_r2 = 3.0      //Permittivity of outer dielectric
E_c = 30.0      //Safe working stress(kV/cm) rms

// Calculation Section
E_i = E_c
D_1 = e_r1/e_r2*d
thick_1 = (D_1-d)/2     //Thickness of first layer(cm)
thick_2 = (D-D_1)/2     //Thickness of second layer(cm)

V_1 = E_c*d*log(D_1/d)/2       //Voltage across first layer(kV)
V_2 = E_i*D_1*log(D/D_1)/2     //Voltage across second layer(kV)
V = V_1 + V_2                       //Permissible conductor voltage(kV)

V_3 = E_c*d*log(D/d)/2         //Permissible conductor voltage(kV) for homogeneous permittivity of 5


// Result Section
printf('Case(i) :')
printf('Thickness of first layer = %.2f cm' ,thick_1)
printf('Thickness of second layer = %.2f cm' ,thick_2)
printf('\nCase(ii) :')
printf('Permissible conductor voltage = %.2f kV' ,V)
printf('\nCase(iii) :')
printf('Permissible conductor voltage if a homogeneous insulation of permittivity 5 is used , V = %.2f kV' ,V_3)
printf('\nNOTE : ERROR : Relative permittivity of outer dielectric is 3 & not 9 as given in textbook')
