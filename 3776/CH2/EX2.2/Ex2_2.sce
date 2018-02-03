clear
l_ob = 2000 //mm - length of rod ob
l_bc = 1000 //mm - length of rod bc
l_cd = 1500 //mm - length of rod cd
p_ob = 100  //kN - Force in rods 
p_bc = -150 //KN
p_cd = 50   //KN 
A_ob = 1000 //sq.mm - Area of rod ob
A_bc = 2000 //sq.mm - Area of rod bc 
A_cd = 1000 //sq.mm - Area of rod cd
E = 200.0 //GPA 
// the total deflection is algebraic sums of `deflection in each module 
e_1 = p_ob*l_ob/(A_ob*E)
e_2 = p_bc*l_bc/(A_bc*E)
e_3 = p_cd*l_cd/(A_cd*E)
//All units are satisfied 
e_total = e_1+ e_2 + e_3
printf("\n The total deflection is : %0.3f mm",e_total)
