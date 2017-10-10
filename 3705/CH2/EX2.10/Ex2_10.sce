
clear//

//Variable Declaration
L=2.5 //Length in m
A=1200 //Cross sectional Area in mm^2
delta_T=40 //Temperature drop in degree C
delta=0.5*10**-3 //Movement of the walls in mm
alpha=11.7*10**-6 //Coefficient of thermal expansion in /degreeC
E=200*10**9 //Modulus of elasticity in Pa

//Calculation
//Part(1)
sigma_1=alpha*delta_T*E //Stress in the rod in Pa

//Part(2)
//Using Hookes Law
sigma_2=E*((alpha*delta_T)-(delta*L**-1)) //Stress in the rod in Pa

printf("\n The Stress in part 1 in the rod is %0.1f MPa",sigma_1*10**-6)
printf("\n The Stress in part 2 in the rod is %0.1f MPa",sigma_2*10**-6)
