
clear//

//NOTE:The NOtation has been changed to ease coding
//Variable Declaration
d=0.005 //difference in length in inch
L=10 //Length in inch
//Area of copper and aluminium in sq.in
Ac=2 //Area of copper 
Aa=3 //Area of aluminium 
//Modulus of elasticity of copper and aluminium in psi
Ec=17000000 //Copper
Ea=10**7 //Aluminium
//Allowable Stress in psi
Sc=20*10**3 //Copper
Sa=10*10**3 //Aluminium

//Calculation
//Equilibrium is Pc+Pa=P
//Hookes Law is delta_c=delta_a+0.005
//Simplfying the solution we have constants we can directly compute
A=d*Ec*(L+d)**-1
B=Ec*Ea**-1
C=L*B*(L+d)**-1
sigma_a=(Sc-A)*C**-1

//Using equilibrium equation
P=Sc*Ac+sigma_a*Aa //Safe load in lb

//Result
printf("\n The safe load on the structure is %0.0f lb",P)
