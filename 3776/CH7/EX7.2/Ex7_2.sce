clear
//Given 
l = 6        //m -length of the beam 
p = 3        //KN-m _ the load applied
R_a = l*p/2  //KN -The reaction at a, Since the system is symmetry 
R_b = l*p/2  //KN -The reaction at b 
l_s = 10     //mm - The length of the screw 
shear_al = 2 //KN - The maximum load the screw can take 
I = 2.36*(10**9) //sq.mm The moment of inertia of the whole system
//We will divide this into two parts
l_1 = 50.0   //mm 
l_2 = 50.0   //mm 
b_1 = 100.0  //mm 
b_2 = 200.0  //mm
A_1 = l_1* b_1   //sq.in - area of part_1
y_1 = 200.0      //mm com distance 
A_2 =l_2*b_2     //sq.mm - area of part_1
y_2 = 225.0      //in com distance
Q = 2*A_1*y_1 + A_2*y_2 // mm**3 For the whole system
q = R_a*Q*(10**3)/I     //N/mm The shear flow 
d = shear_al*(10**3)/q  //mm The space between the nails
printf("\n The minimal space between the nails  %0.0f mm",d)
printf("\n Similar calculation for 4.5 KN gives spacing of 246mm")
