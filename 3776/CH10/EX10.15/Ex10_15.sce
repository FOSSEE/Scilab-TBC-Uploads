clear
//Given
E = 30*(10**3) //ksi - The youngs modulus of the material 
stress_y = 40 //ksi - yield stress
stress_max = 24.2 //ksi - the maximum stress
l = 2          //in - The length of the crossection 
b = 3       //in - the width of the crossection
h = 3 //in - the depth of the crossection
//lets check ultimate capacity for a 2 in deep section 
M_ul = stress_y*b*(l**2)/4 //K-in the ultimate capacity 
curvature = 2*stress_y/(E*(h/2) ) //in*-1 the curvature of the beam 
curvature_max = stress_max/(E*(h/2)) //in*-1 The maximum curvature 
printf("\n the ultimate capacity %0.3f k-in",M_ul)
printf("\n the ultimate curvature %0.3f in *-1",curvature_max)
printf("\n E given in equation is wrong")
printf("\n Actual E in question is 30*10**3")

