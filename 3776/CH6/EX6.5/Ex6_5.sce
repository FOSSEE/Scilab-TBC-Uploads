clear
//Given 
//We will divide this into three parts
F = 8   //k - force applied
d = 16  //inch -distance
l_1 = 1 //in 
l_2 = 3 //in 
b_1 = 4 //in 
b_2 = 1 //in
A_1 = l_1* b_1 //sq.in - area of part_1
y_1 = 0.5      //in com distance from ab
A_2 =l_2*b_2   //sq.in - area of part_1
y_2 = 2.5      //in com distance from ab
A_3 = l_2*b_2  //sq.in - area of part_1
y_3 = 2.5      //in com distance from ab

y_net = (A_1*y_1  +A_2*y_2 + A_3*y_3)/(A_1+A_2+A_3) //in - The com of the whole system
c_max = (4-y_net)                                   //in - The maximum distace from com to end
c_min  = y_net                                      //in - the minimum distance from com to end
I_1 = b_1*(l_1**3)/12 + A_1*((y_1-y_net)**2)        //Parallel axis theorem
I_2 =  b_2*(l_2**3)/12 + A_2*((y_2-y_net)**2)
I_3 =  b_2*(l_2**3)/12 + A_2*((y_2-y_net)**2)
I_net = I_1 + I_2 + I_3 //in^4 - the total moment of inertia
M_c = F*d*c_max 
stress_cmax = M_c/I_net  //ksi - The maximum compressive stress

M_t= F*d*c_min 
stress_tmax = M_t/I_net  //ksi - The maximum tensile stress
printf("\n The maximum tensile stress %0.3f ksi",stress_tmax )
printf("\n The maximum compressive stress %0.1f ksi",stress_cmax)
