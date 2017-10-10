clear
//Given 
T_ab = 0    //N.m - torsion in AB 
T_bc = 150  //N.m - torsion in BC
T_cd = 150  //N.m - torsion in CD
T_de = 1150 //N.m - torsion in DE
l_ab = 250 //mm - length of AB
l_bc = 200 //mm - length of BC
l_cd = 300 //mm - length of cd 
l_de = 500.0 //mm - length of de
d_1 = 25 //mm - outer diameter 
d_2 = 50 //mm - inner diameter
G = 80 //Gpa -shear modulus
//Caliculations 

J_ab = 3.14*(d_1**4)/32           //mm4
J_bc = 3.14*(d_1**4)/32           //mm4
J_cd = 3.14*(d_2**4 - d_1**4)/32  //mm4
J_de = 3.14*(d_2**4 - d_1**4)/32  //mm4
rad =  T_ab*l_ab/(J_ab*G)+ T_bc*l_bc/(J_bc*G)+ T_cd*l_cd/(J_cd*G)+ T_de*l_de/(J_de*G) // adding the maximum radians roteted in each module
printf("\n The maximum angle rotated is  %0.3f radians ",rad)
