clear
mass = 4 //kg 
dist = 1 //mt freely falling distance
l = 1500 //mm length of rod
d = 15 //mm diameter
l_ab = 6.71 //inch
l_bc = 8.29 //inch
E =  200  //GPA youngs modulus 
k = 4.5 // N/mm stiffness costant
F =  mass*9.81// The force applying
Area =  3.14*(d**2)/4  
// Two cases 
//youngs modulus 
e_y = F*l/(Area*E*(10**3))
// stiffness
e_f = F/k 
//total
e = e_y +e_f
k = 1+(2/(e*(10**-3)))
stress_max_1 = F*(1+(k**0.5))/Area
printf("\n The maximum stress is: %0.3f MPa",stress_max_1)
