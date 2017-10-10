clear
//Given
shear_v = 3000      //N - Transmitted vetical shear 
shear_al = 700      //N - The maximum allowable  
//We will divide this into two parts
l_1 = 50.0   //mm 
l_2 = 200.0  //mm 
b_1 = 200.0  //mm 
b_2 = 50.0   //mm
A_1 = l_1* b_1  //mm2 - area of part_1
y_1 = 25.0      //mm com distance 
A_2 =l_2*b_2    //mm2 - area of part_1
y_2 = 150.0     //in com distance 
y_net = (A_1*y_1  +A_2*y_2)/(A_1+A_2)               //mm - The com of the whole system
c_max = (4-y_net)                                   //mm - The maximum distace from com to end
c_min  = y_net                                      //mm - the minimum distance from com to end
I_1 = b_1*(l_1**3)/12 + A_1*((y_1-y_net)**2)        //Parallel axis theorm
I_2 =  b_2*(l_2**3)/12 + A_2*((y_2-y_net)**2)
I_net = I_1 + I_2      //mm4 - the total moment of inertia
Q = A_1*(-y_1+y_net)   //mm3
q = shear_v*Q/I_net    //N/mm - Shear flow
d = shear_al/q         // The space between the nails 
printf("\n The minimal space between the nails  %0.1f mm",d)
