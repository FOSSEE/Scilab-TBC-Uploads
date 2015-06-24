clc
edge=2 //in
height=3 //in
F=20000 //lb
deltaS=0.00234 //in
deltaA=0.00088 //in
E=F*height/(deltaA*edge*edge)
printf("Modulus of elasticity=%f psi",E)
G=F*height/(deltaS*edge*edge)
printf("\n Modulus of Rigidity=%f psi",G)
Mu=E/(2*G) -1
printf("\n Poisson ratio=%f ",Mu)
