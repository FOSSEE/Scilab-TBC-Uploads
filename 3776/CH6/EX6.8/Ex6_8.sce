clear
//Given 
//Given 
//We will divide this into two parts
E_w = 10.0  //GPa - Youngs modulus of wood
E_s = 200.0 //GPa - Youngs modulus of steel
M = 30.0    //K.N-m _ applied bending moment 
n = E_s/E_w 
l_1 = 250    //mm 
l_2 = 10     //mm
b_1 = 150.0  //mm
b_2 = 150.0*n  //mm
A_1 = l_1* b_1 //sq.mm - area of part_1
y_1 = 125.0    //mm com distance from top
A_2 =l_2*b_2   //sq.mm - area of part_1
y_2 = 255.0    //mm com distance from top
y_net = (A_1*y_1  +A_2*y_2)/(A_1+A_2)          //mm - The com of the whole system from top
I_1 = b_1*(l_1**3)/12.0 + A_1*((y_1-y_net)**2) //Parallel axis theorem
I_2 =  b_2*(l_2**3)/12.0 + A_2*((y_2-y_net)**2)
I_net = I_1 + I_2  //mm4 - the total moment of inertia
c_s= y_net         // The maximum distance in steel 
stress_steel = M*(10.0**6)*c_s/I_net   //MPa - The maximum stress in steel 

c_w= l_1+l_2-y_net                     // The maximum distance in wood 
stress_wood = n*M*(10.0**6)*c_w/I_net  //MPa - The maximum stress in wood 

printf("\n The maximum stress in steel  %0.2f MPa",stress_steel)
printf("\n The maximum stress in wood %0.2f MPa",stress_wood)
