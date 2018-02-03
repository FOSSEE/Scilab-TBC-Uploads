clear
//Given 
l = 50.0    //mm - the length of the beam 
b =  50.0   //mm - the width of the beam
M  = 2083   //Nm
A = l*b     //sq.mm - The area 
//straight beam 
I = b*(l**3)/12.0 //mm4 - The moment of inertia of the beam
c_1= l/2          // the distance where the stress is maximum 
c_2 = -l/2        // the distance where the stress is maximum 
s_1 = I/c_1
s_2 = I/c_2
stress_max_1 = M*(10**3)/s_1 //MPa - the maximum strss recorded in the  crossection
stress_max_2 = M*(10**3)/s_2 //MPa - the maximum strss recorded in the  crossection 
printf("\n The maximum stress upward in straight case is %0.3f MPa",stress_max_1)
printf("\n The maximum stress downward in straight case is %0.3f MPa",stress_max_2)

//curved beam 
//
r = 250.0                 //mm Radius of beam curved 
r_0 = r - l/2             // inner radius 
r_1 = r + l/2             // outer radius
R = l/(log(r_1/r_0)) //mm 
e = r - R 
stressr_max_1 = M*(10**3)*(R-r_0)/(r_0*A*e)
stressr_max_2 = M*(10**3)*(R-r_1)/(r_1*A*e)
printf("\n The maximum stress upward in curved case is %0.3f MPa",stressr_max_1)
printf("\n The maximum stress downward in curved case is %0.3f MPa",stressr_max_2)

//curved beam _2 
//
r = 75.0      //mm Radius of beam curved 
r_0 = r - l/2 // inner radius 
r_1 = r + l/2 // outer radius
R = l/(log(r_1/r_0)) //mm 
e = r - R 
stressr_max_1 = M*(10**3)*(R-r_0)/(r_0*A*e)
stressr_max_2 = M*(10**3)*(R-r_1)/(r_1*A*e)
printf("\n The maximum stress upward in curved case2 is %0.3f MPa",stressr_max_1)
printf("\n The maximum stress downward in curved case2 is %0.3f MPa",stressr_max_2)
