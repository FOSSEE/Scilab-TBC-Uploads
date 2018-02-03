clear
//
l = 15          //in - The length of the crossection 
b = 33.9        //in - the width of the crossection
L = 100         //in The length of the cantilever 
E = 29*(10**6)  //psi The youngs modulus of the material used 
I_Z = 315       //in^4 - the moment of inertia wrt Z axis 
I_y = 8.13      //in^4 - the moment of inertia wrt Y axis
o = 5           // degrees - the angle of acting force 
P = 2000        //k the acting force 
P_h = P*sin((%pi/180)*(o)) //k - The horizontal component of P
P_v = P*cos((%pi/180)*(o)) //k - The vertical  component of P
e_h =  P_h*(L**3)/(3*E*I_y)       // the horizontal component of deflection 
e_v =  P_v*(L**3)/(3*E*I_Z )      // the vertical component of deflection
e = ((e_h**2 + e_v**2)**0.5)
printf("\n the horizontal component of deflection %0.3f in",e_h)
printf("\n the vertical component of deflection %0.3f in",e_v)
printf("\n the resultant deflection %0.3f in",e)
