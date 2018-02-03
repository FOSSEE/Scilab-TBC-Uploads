clear
//Given
E = 30*(10**3) //ksi - The youngs modulus of the material
stress_y = 40 //ksi - yield stress
stress_max = 24.4 //ksi - the maximum stress
l = 2          //in - The length of the crossection
b = 3       //in - the width of the crossection
h = 2 //in - the depth of the crossection
//lets check ultimate capacity for a 2 in deep section
M_ul = stress_max*b*(l**2)/4 //K-in the ultimate capacity
curvature = 2*stress_y/(E*(h/2) ) //per inch the curvature of the beam
curvature_max = stress_max/(E*(b/2)) //per inch The maximum curvature
printf("\n the curvature in 11-in is %e per inch",curvature)
printf("\n the ultimate curvature %e per inch",curvature_max)
