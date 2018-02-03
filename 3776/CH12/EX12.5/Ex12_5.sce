clear
//Given
//Virtual loading Without f_d
p_ab = -0.833   //lb The recorded virtual loading
p_bc = + 0.833  //lb The recorded virtual loading
F_ab = 2500     //lb
F_bc = -2500    //lb
l_ab = 60       //in - The length of the rod
l_bc = 60       //in - The length of the rod
A_ab = 0.15     //sq.in the areaof ab
A_bc = 0.25     //sq.in the areaof bc
E = 30*(10**6)  //psi The youngs modulus of the material
//Part_a
e_a =p_ab*l_ab*F_ab/(A_ab*E) + p_bc*l_bc*F_bc/(A_bc*E) //lb-in the deflection
//With f_d
p_bd = 1       //lb The recorded virtual loading 
F_bd = 1       //lb
l_bd = 40      //in - The length of the rod
A_bd = 0.1     //sq.in the areaof ab
e_a_1 =p_ab*p_ab*l_ab/(A_ab*E) + p_bc*p_bc*l_bc/(A_bc*E) +p_bd*p_bd*l_bd/(A_bd*E) //lb-in the deflection
//Since the produced defelection should compensate the other one
x_d = e_a/e_a_1
printf("\n The reaction force at D is %0.2f lb",-x_d)

//Part - B
e_b = -x_d*l_bd/(A_bd*E ) //in - The deflection of nodal point B
printf("\n The deflection of nodal point B %0.4f in",e_b)
