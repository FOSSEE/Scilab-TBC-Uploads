clear
//Given
//Virtual loading
//Two parts 
//Part -1 
p_ab = 5     //KN The recorded virtual loading
p_bc = -4    //KN The recorded virtual loading
F_ab = 10    //KN
F_bc = -8    //KN
l_ab = 2.5           //mt - The length of the rod
l_bc = 2             //mt - The length of the rod
A_ab = 5*(10**-4)    //mt2 the areaof ab
A_bc = 5*(10**-3)    //mt2 the areaof bc
E = 70 //Gpa The youngs modulus of the material
e_a =(p_ab*l_ab*F_ab/(A_ab*E) + p_bc*l_bc*F_bc/(A_bc*E))*(10**-6) //KN-m
//Part -2 due to flexure
I = 60*10**6    //mm4 - the moment of inertia 
//After solving the integration 
e_b = 0.01525 //KN-m
//Total
e = (e_a+e_b)*1 //m
printf("\n The point C deflects %d mm down",e*10**3)
