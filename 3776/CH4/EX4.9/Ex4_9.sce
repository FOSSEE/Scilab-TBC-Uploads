clear
//given
//its a statistally indeterminant
//we will take of one of the support
//Given
T_ab = 0    //N.m - torsion in AB
T_bc = 150  //N.m - torsion in BC
T_cd = 150  //N.m - torsion in CD
T_de = 1150 //N.m - torsion in DE
l_ab = 250  //mm - length of AB
l_bc = 200  //mm - length of BC
l_cd = 300  //mm - length of cd
l_de = 500.0//mm - length of de
d_1 = 25 //mm - outer diameter
d_2 = 50 //mm - inner diameter
//calculations

J_ab = 3.14*(d_1**4)/32          //mm4
J_bc = 3.14*(d_1**4)/32          //mm4
J_cd = 3.14*(d_2**4 - d_1**4)/32 //mm4
J_de = 3.14*(d_2**4 - d_1**4)/32 //mm4
G = 80 //GPa -shear modulus
rad =  T_ab*l_ab/(J_ab*G)+ T_bc*l_bc/(J_bc*G)+ T_cd*l_cd/(J_cd*G)+ T_de*l_de/(J_de*G)
//now lets consider T_A then the torsion is only T_A
// T_A*(l_ab/(J_ab*G)+ l_bc/(J_bc*G)+ l_cd/(J_cd*G)+ l_de/(J_de*G)) +rad = 0
// since there will be no displacement
T_A =rad/(l_ab/(J_ab*G)+ l_bc/(J_bc*G)+ l_cd/(J_cd*G)+ l_de/(J_de*G)) //Torsion at A
T_B = 1150 - T_A                                                        //n-m F_X = 0 torsion at B
printf("\n The Torsion at rigid end A is %0.0f N-m",T_A)
printf("\n The Torsion at rigid end B is %d N-m",T_B)
