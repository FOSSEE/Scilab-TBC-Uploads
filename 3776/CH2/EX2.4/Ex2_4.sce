clear
p_app = 3 //kips - applied force
P_A = 2.23 //kips
p_B = -2.83 //kips - compressive force
l_ab = 6.71 //inch
l_bc = 8.29 //inch
s_ab = 17.8 //ksi - tensile stress
s_bc = -12.9 //ksi - compressive stress
E = 10.6 * (10**3) //ksi -youngs modulus
e_ab = s_ab*l_ab/E //elongation

e_bc = s_bc*l_bc/E //contraction
x = -e_bc/e_ab //the Ratio of cosines of the deflected angles
// t_1 and t_2 be deflected angles
//t_2 = 180-45-26.6-t_1 the sum of angles is 360
//applying cos on both sides
t_1=atand(1.29)

e = e_ab/cosd((t_1)) //inch
e_t = e*cosd(11.2)
k  = p_app/e_t // kips/in vertical stiffness of the combination
printf("\n The vertical stiffness of the combination is %0.3f kips/inch",k) //answer in textbook is 167
// answer varies due to rounding off errors
