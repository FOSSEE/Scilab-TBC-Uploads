clear
//

//Initilization of Variables

t=20 //degree celsius
E_a=70*10**9 //N/mm**2 //Modulus of Elasticicty of aluminium
alpha_a=11*10**-6 //per degree celsius //Temperature coeff of aluminium
alpha_s=12*10**-6 //Per degree celsius //Temperature coeff of steel
L_a=1000 //mm //Length of aluminium 
L_s=3000 //mm //Length of steel
E_a=7*10**4 //N/mm**2 //Modulus of Elasticity of aluminium
E_s=2*10**5 //N/mm*2 //Modulus of Elasticity of steel
A_a=600 //mm**2 //Area of aluminium
A_s=300 //mm**2 //Area of steel

//Calculations

//Free Expansion 
dell=alpha_a*t*L_a+alpha_s*t*L_s
  
//support Reaction
P=dell*(L_a*(A_a*E_a)**-1+L_s*(A_s*E_s)**-1)**-1

//Result
printf("\n Reaction at support is %0.2f  N",P)
