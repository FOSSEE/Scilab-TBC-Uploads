clear
//Given
M = 50000     //ft-lb , positive bending moment applied
N =  9        // number of steel bars
n = 15        // The ratio of steel to concrete
A_s = 30      //sq.in area of steel in concrete
//(10*y)*(y/2) = 30*(20-y)
//y**2 + 6*y -120
//solving quadractic equation
//

a = 1
b = 6
c = -120
// calculate the discriminant
d = (b**2) - (4*a*c)

// find two solutions
sol1 = (-b-sqrt(d))/(2*a)
sol2 = (-b+sqrt(d))/(2*a)
y = sol2   // Nuetral axis is found
l_1 = y    //in- the concrete below nuetral axis is not considered
b_1 = 10   //in - width
A_1 = l_1* b_1 //sq.in - area of concrete
y_1 = y/2      //in com of the concrete
y_2 = 20-y     //in com of the transformed steel
I_1 = b_1*(l_1**3)/12.0 + A_1*((y_1-y)**2) //in^4 parallel axis theorem
I_2 =   A_s*((y_2)**2) //in^4 first part is neglected
I_net = I_1 + I_2      //in^4 - the total moment of inertia
c_c= y                 //in The maximum distance in concrete
stress_concrete = M*12*c_c/I_net   //psi - The maximum stress in concrete
c_s= 20- y
stress_steel =n*M*12*c_s/I_net     //psi - The maximum stress in concrete
printf("\n The maximum stress in concrete  %0.2f psi",stress_concrete) //
printf("\n The stress in steel %0.2f psi",stress_steel)
// answer varies due to rounding off errors
