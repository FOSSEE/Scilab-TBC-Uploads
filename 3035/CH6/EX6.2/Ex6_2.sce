// Variable Declaration
E_c = 100.0     //Safe working stress(kV/cm) rms
V = 130.0       //Operating voltage(kV) rms
d = 1.5         //Diameter of conductor(cm)

// Calculation Section
ln_D = 2*V/(E_c*d)+log(d)
D = exp(ln_D)
thick_1 = (D-d)/2               //Insulation thickness(cm)

d_2 = 2*V/E_c
D_2 = 2.718*d_2                 //Sheath diameter(cm)
thick_2 = (D_2-d_2)/2           //Insulation thickness(cm)

// Result Section
printf('(i)  Internal sheath radius = %.2f cm' ,thick_1)
printf('(ii) Internal sheath radius = %.2f cm' ,thick_2)
