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
//location of nuetral axis To show these stresses are max and minimum 
//tanB = MzI_z + MzI_yz/MyI_y +M_YI_yz
I_z = 22.64 *(10**6) //mm4 moment of inertia in Z direction
I_y = 3.84 *(10**6) //mm4 moment of inertia in Y direction
I_yz =5.14 *(10**6) //mm4 moment of inertia in YZ  direction 
M_y = M //KN.m bending moment in Y dorection 
M_z = M //KN.m bending moment in Y dorection 
B = atan(( M_z*I_yz)/(M_z*I_y )) //(%pi/180)*  location on neutral axis
beta =  (180/%pi)*(B)
printf("\n By sketching the line with angle %0.1f degrees The farthest point associated with B and F",beta)
