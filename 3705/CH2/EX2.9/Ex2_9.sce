
clear//
//

//Variable Declaration
P=50*10**3 //Load applied in N
x1=0.6 //Length in m
x2=1.6 //Length in m
L1=1 //Length of steel cable in m
L2=2 //Length of bronze cable in m
L=2.4 //Length in m
//Area in m^2
Ast=600*10**-6 //Steel
Abr=300*10**-6 //Bronze
//Modulus of elasticity in GPa
Est=200 //Steel
Ebr=83 //Bronze

//Calculations
//Applying the equilibrium and Hookes law we solve by matrix method
a=[x1,x2;1,-((x1*Est*Ast*L2)/(x2*Ebr*Abr))]
b=([L*P;0])
y=linsolve(a,b)

//Stresses in Pa
sigma_st=-y(1)*Ast**-1 //Stress in steel
sigma_br=-y(2)/Abr //Stress in bronze

//Result
printf("\n The stresses in steel and bronze are as follows")
printf("\n %0.1f MPa and %0.1f MPa respectively",sigma_st*10**-6,sigma_br*10**-6)
