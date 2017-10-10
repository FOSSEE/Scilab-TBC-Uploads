clear
//Given 
//From example 5.8 
W = 4.0   //N/m - The force distribution 
L = 3     // m - The length of the force applied
M = W*L/8.0 // KN.m The moment due to force distribution
o = 30    // the angle of force applid to horizantal
l = 150.0 //mm length of the crossection 
b = 100.0 //mm - width of the crossection 
//
M_z = M*(cos(3.14/6))
M_y = M*(sin(%pi/6))
I_z = b*(l**3)/12.0
I_y = l*(b**3)/12.0
//tanb = I_z /I_y *tan30
b = atand((I_z*tan(3.14/6.0)/I_y))
printf("\n The angle at which neutral axis locates is %0.3f degrees",b)
