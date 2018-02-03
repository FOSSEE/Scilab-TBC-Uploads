clear
//Given   
P_Max  = 10   //N - the maximum distribution in a triangular distribution
L = 3         //mt the total length of force distribution 
L_X = 5       //mt - the horizontal length of the rod
//calculations 

F_y = P_Max*L*0.5 //N - The force due to triangular distribition 
L_com  = 2*L /3   //mt - the resultant force acting as a result of distribution acting position 
//F_X = 0 forces in x directions
R_A_X = 0         // since there are no forces in X-direction
R_B_X = 0
//M_A = 0 momentum at point a is zero
//F_y*L_com - R_B_Y*L_X = 0
R_B_Y = F_y*L_com/L_X

//M_B= 0 momentum at point b is zero
//- R_A_Y*L_X = F_y*(L_X-L )

R_A_Y = - F_y*L/L_X

//For a---a section 
l_a = 2 //mt - a---a section from a 
l_com_a = 2*l_a/3
v_a = R_A_Y + 0.5*l_a*(10.0*2/3) //*(10*2/3) because the maximum moves

M_a =  (10.0*0.66)*l_a*(0.33) + R_A_Y*l_a 

//For b---b section 

v_b = F_y + R_A_Y //equilabrium conditions
M_b =  (F_y + R_A_Y)*(-1)

printf("\n The force and moment in section a--a are %0.2f kN  %0.3f kN-m",v_a,M_a)
printf("\n The force and moment in section b--b are %0.3f kN  %0.3f kN-m",v_b,M_b)
