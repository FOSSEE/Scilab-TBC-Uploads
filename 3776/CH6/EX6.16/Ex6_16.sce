clear
//
M = 10                //KN.m - The moment applied
I_max = 23.95*(10**6) //mm4 - I_z The moment of inertia
I_min = 2.53*(10**6)  //mm4 - I_y The moment of inertia
o = 14.34             // degress the principle axis rotated
//Coponents of M in Y,Z direction 
M_z = M*(10**6)*cos((%pi/180)*(o))
M_y = M*(10**6)*sin((%pi/180)*(o))
//tanb = I_z /I_y *tan14.34
b = atan((I_max*tan((%pi/180)*(o))/I_min ))
B = (180/%pi)*(b) 
y_p = 122.9      // mm - principle axis Y cordinate
z_p = -26.95     //mm - principle axis z cordinate
stress_B = - M_z*y_p/I_max + M_y*z_p/I_min  //MPa - Maximum tensile stress
y_f = -65.97     // mm - principle axis Y cordinate
z_f = 41.93      //mm - principle axis z cordinate
stress_f = - M_z*y_f/I_max + M_y*z_f/I_min //MPa - Maximum compressive stress
printf("\n The maximum tensile stress %0.2f MPa",stress_B)
printf("\n The maximum compressive stress %0.2f MPa",stress_f)
